// Generated by CoffeeScript 1.8.0
angular.module('ximdex.common.filter').filter("nodeSelected", function() {
  return function(input, arr) {
    var a, _i, _len;
    for (_i = 0, _len = arr.length; _i < _len; _i++) {
      a = arr[_i];
      if (((a.nodeFrom == null) && (a.nodeTo == null) && (input.nodeFrom == null) && (input.nodeTo == null) && a.nodeid === input.nodeid) | ((a.nodeFrom != null) && (a.nodeTo != null) && (input.nodeFrom != null) && (input.nodeTo != null) && a.nodeFrom === input.nodeFrom && a.nodeTo === input.nodeTo)) {
        return true;
      }
    }
    return false;
  };
});

angular.module("ximdex.common.directive").directive("ximBrowser", [
  "xTranslate", "$window", "$http", "xUrlHelper", "xMenu", "$document", "$timeout", "$q", "xTabs", "$rootScope", function(xTranslate, $window, $http, xUrlHelper, xMenu, $document, $timeout, $q, xTabs, $rootScope) {
    var base_url;
    base_url = $window.X.baseUrl;
    return {
      templateUrl: base_url + '/inc/js/angular/templates/ximBrowser.html',
      restrict: "E",
      replace: true,
      scope: {
        xid: "@ximId",
        mode: "@ximMode"
      },
      controller: [
        "$scope", function($scope) {
          var actualFilter, allowedHotkey, canceler, dragStartPosition, findNodeById, firstHide, getFolderPath, isPanelHide, listenHidePanel, loadAction, postLoadActions, postLoadNodeChildren, postNavigateToNodeId, postShowHidePanel, prepareBreadcrumbs, size;
          if ($scope.mode === "sidebar") {
            delete Hammer.defaults.cssProps.userSelect;
            Hammer.defaults.touchAction = "pan-y";
            dragStartPosition = 0;
            $scope.expanded = true;
            size = 0;
            listenHidePanel = true;
            $scope.ccenter = null;
            $scope.modules = null;
            $scope.selectedTab = 1;
          }
          $scope.filter = '';
          $scope.projects = null;
          $scope.initialNodeList = null;
          $scope.breadcrumbs = [];
          $scope.treeMode = true;
          $scope.selectedNodes = [];
          $scope.filterMode = false;
          canceler = $q.defer();
          actualFilter = "";
          $http.get(xUrlHelper.getAction({
            action: "browser3",
            method: "read",
            id: "10000"
          })).success(function(data) {
            if (data) {
              $scope.projects = data;
              $scope.projects.showNodes = true;
            }
            data = null;
          });

          /*
              ONLY ON SIDEBAR MODE
           */
          if ($scope.mode === "sidebar") {
            loadAction = function(action, nodes) {
              xTabs.pushTab(action, nodes);
            };
            $http.get(xUrlHelper.getAction({
              action: "browser3",
              method: "read",
              id: "2"
            })).success(function(data) {
              if (data) {
                $scope.ccenter = data;
              }
              data = null;
            });
            $http.get(xUrlHelper.getAction({
              action: "moduleslist",
              method: "readModules"
            })).success(function(data) {
              if (data) {
                $scope.modules = data;
              }
              data = null;
            });
            $scope.loadActions = function(node, event) {
              var data, n, nodeToSearch, _i, _len, _ref;
              $scope.select(node, event);
              if (($scope.selectedNodes[0].nodeid == null) | ($scope.selectedNodes[0].nodetypeid == null) | $scope.selectedNodes[0].nodeid === "0") {
                return;
              }
              nodeToSearch = $scope.selectedNodes[0].nodeid;
              if ($scope.selectedNodes.length > 1) {
                _ref = $scope.selectedNodes.slice(1);
                for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                  n = _ref[_i];
                  nodeToSearch += "-" + n.nodeid;
                }
              }
              if ($window.com.ximdex.nodeActions[nodeToSearch] == null) {
                $http.get(xUrlHelper.getAction({
                  action: "browser3",
                  method: "cmenu",
                  nodes: $scope.selectedNodes
                })).success(function(data) {
                  if (data) {
                    $window.com.ximdex.nodeActions[nodeToSearch] = data;
                    postLoadActions(data, event, $scope.selectedNodes);
                  }
                });
              } else {
                data = $window.com.ximdex.nodeActions[nodeToSearch];
                postLoadActions(data, event, $scope.selectedNodes);
              }
              return false;
            };
            postLoadActions = function(data, event, selectedNodes) {
              if (data.length === 0) {
                return;
              }
              if (event.pointers != null) {
                data.left = event.pointers[0].clientX + ($window.document.documentElement.scrollLeft ? $window.document.documentElement.scrollLeft : $window.document.body.scrollLeft);
                data.top = event.pointers[0].clientY + ($window.document.documentElement.scrollTop ? $window.document.documentElement.scrollTop : $window.document.body.scrollTop);
              }
              if (event.clientX) {
                data.left = event.clientX + ($window.document.documentElement.scrollLeft ? $window.document.documentElement.scrollLeft : $window.document.body.scrollLeft);
                data.top = event.clientY + ($window.document.documentElement.scrollTop ? $window.document.documentElement.scrollTop : $window.document.body.scrollTop);
              }
              xMenu.open(data, selectedNodes, loadAction);
              data = null;
            };
            $scope.dragStart = function(event) {
              if ($scope.expanded && !isPanelHide) {
                dragStartPosition = angular.element('#angular-tree').width();
                angular.element('body').addClass('noselect');
              }
            };
            $scope.drag = function(e, width) {
              var x;
              if ($scope.expanded && !isPanelHide) {
                x = e.deltaX + dragStartPosition;
                if (x > $document.width() - 17) {
                  x = $document.width() - 17;
                }
                if (x < 270) {
                  x = 270;
                }
                angular.element(e.target).css({
                  left: x + "px"
                });
                angular.element('#angular-tree').css({
                  width: x + "px"
                });
                angular.element('#angular-content').css({
                  left: (x + parseInt(width)) + "px"
                });
                x = null;
              }
            };
            $scope.dragEnd = function() {
              if ($scope.expanded && !isPanelHide) {
                angular.element('body').removeClass('noselect');
                if ($window.getSelection) {
                  if ($window.getSelection().empty) {
                    $window.getSelection().empty();
                  } else if ($window.getSelection().removeAllRanges) {
                    $window.getSelection().removeAllRanges();
                  }
                } else if (document.selection) {
                  document.selection.empty();
                }
                $rootScope.$broadcast('updateTabsPosition');
              }
            };
            $scope.toggleTree = function() {
              var button;
              if ($scope.expanded) {
                $scope.hideTree();
              } else {
                $scope.showTree();
              }
              button = angular.element('#angular-tree-toggle');
              button.toggleClass("tie");
              $scope.expanded = !$scope.expanded;
            };
            postShowHidePanel = function() {
              listenHidePanel = !listenHidePanel;
              return $rootScope.$broadcast('updateTabsPosition');
            };
            firstHide = true;
            isPanelHide = false;
            $scope.hideTree = function() {
              var a, b, button, content, hm_content;
              if (listenHidePanel) {
                isPanelHide = true;
                size = angular.element('#angular-tree').width();
                button = angular.element('#angular-tree-toggle');
                button.addClass("hide");
                button.addClass("hideable");
                angular.element('#angular-tree').addClass("hideable");
                angular.element('#angular-content').addClass("hideable");
                a = 7;
                b = 10 + a;
                angular.element('#angular-tree').css({
                  left: (-size - 7) + "px"
                });
                angular.element('#angular-content').css({
                  left: (b - 7) + "px"
                });
                a = b = null;
                $timeout(postShowHidePanel, 500);
                if (firstHide) {
                  firstHide = false;
                  content = document.getElementById('angular-content');
                  hm_content = new Hammer(content);
                  hm_content.on("swiperight", $scope.showTree);
                }
              }
            };
            $scope.showTree = function() {
              var button;
              if (!listenHidePanel) {
                angular.element('#angular-tree').css({
                  left: 0 + "px"
                });
                angular.element('#angular-content').css({
                  left: (size + 10 + 7) + "px"
                });
                button = angular.element('#angular-tree-toggle');
                button.removeClass("hide");
                $timeout(function() {
                  postShowHidePanel();
                  isPanelHide = false;
                  angular.element('#angular-tree').removeClass("hideable");
                  angular.element('#angular-content').removeClass("hideable");
                  return button.removeClass("hideable");
                }, 500);
              }
            };
            $scope.openModuleAction = function(node) {
              var action, nodes;
              action = {
                command: "moduleslist",
                name: node.name,
                method: "opentab",
                params: [
                  {
                    modsel: node.name
                  }
                ]
              };
              nodes = [
                {
                  nodeid: node.id
                }
              ];
              xTabs.pushTab(action, nodes);
            };
            allowedHotkey = true;
            $scope.$parent.keydown = function(event) {
              var action, n, _i, _len, _ref;
              if (!allowedHotkey) {
                return;
              }
              if (event.altKey && event.ctrlKey && event.keyCode === 73 && $scope.selectedNodes.length > 0) {
                action = {
                  command: 'infonode',
                  method: 'index',
                  name: _("Node Info")
                };
                _ref = $scope.selectedNodes;
                for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                  n = _ref[_i];
                  if ((n.nodeid != null) && n.nodeid !== "0") {
                    xTabs.pushTab(action, [n]);
                  }
                }
                allowedHotkey = false;
                event.stopPropagation();
                event.preventDefault();
              }
            };
            $scope.$parent.keyup = function(event) {
              if (!allowedHotkey) {
                allowedHotkey = true;
              }
            };
          }

          /*
              FINISH ONLY ON SIDEBAR MODE
           */
          $scope.toggleNode = function(node, event) {
            var action;
            if (node.isdir === "0") {
              action = {
                command: 'infonode',
                method: 'index',
                name: _("Node Info")
              };
              loadAction(action, [node]);
              return;

              /*if not $window.com.ximdex.nodeActions[node.nodeid]?
                  $http.get(xUrlHelper.getAction(
                      action: "browser3"
                      method: "cmenu"
                      nodes: $scope.selectedNodes
                  )).success (data) ->
                      if data
                          $window.com.ximdex.nodeActions[node.nodeid] = data
                          loadAction data[0], [node]
                      return
              else
                  data = $window.com.ximdex.nodeActions[node.nodeid]
                  loadAction data[0], [node]
              return
               */
            }
            node.showNodes = !node.showNodes;
            if (node.showNodes && !node.collection) {
              $scope.loadNodeChildren(node);
            }
          };
          postLoadNodeChildren = function(data, callback, node) {
            var cancel;
            node.loading = false;
            if (data && (data.collection != null) && data.collection.length > 0) {
              node.collection = data.collection;
              node.children = data.children;
              node.state = data.state;
              if ($scope.treeMode === false && $scope.selectedTab === 1) {
                $scope.initialNodeList = node;
              }
              if (callback) {
                callback(node.collection);
              }
              callback = null;
            }
            $scope.initialNodeList = node;
            prepareBreadcrumbs();
            data = null;
            cancel = null;
          };
          $scope.loadNodeChildren = function(node, callback) {
            var fromTo, idToSend, maxItemsPerGroup, url;
            if (node.loading | node.isdir === "0") {
              if ($scope.treeMode === false) {
                $scope.initialNodeList = node;
                prepareBreadcrumbs();
              }
              return;
            }
            node.loading = true;
            node.showNodes = true;
            canceler.resolve();
            canceler = $q.defer();
            if ($scope.filterMode && $scope.selectedTab === 1) {
              node.collection = [];
              url = xUrlHelper.getAction({
                action: "browser3",
                method: "readFiltered",
                id: node.nodeid
              }) + "&query=" + actualFilter;
              $http.get(url, {
                timeout: canceler.promise
              }).success(function(data) {
                return postLoadNodeChildren(data, callback, node);
              }).error(function(data) {
                var cancel;
                node.loading = false;
                cancel = null;
              });
            } else {
              maxItemsPerGroup = parseInt($window.com.ximdex.preferences.MaxItemsPerGroup);
              fromTo = "";
              idToSend = node.nodeid;
              if (node.nodeid === "0" && (node.startIndex != null) && (node.endIndex != null)) {
                fromTo = "&from=" + node.startIndex + "&to=" + node.endIndex;
                idToSend = node.parentid;
              }
              $http.get(xUrlHelper.getAction({
                action: "browser3",
                method: "read",
                id: idToSend
              }) + ("&items=" + maxItemsPerGroup) + fromTo, {
                timeout: canceler.promise
              }).success(function(data) {
                return postLoadNodeChildren(data, callback, node);
              }).error(function(data) {
                var cancel;
                node.loading = false;
                cancel = null;
              });
              idToSend = null;
              fromTo = null;
              maxItemsPerGroup = null;
            }
          };
          $scope.select = function(node, event) {
            var ctrl, k, n, pushed, _ref, _ref1;
            ctrl = event.srcEvent != null ? event.srcEvent.ctrlKey : event.ctrlKey;
            if (ctrl) {
              _ref = $scope.selectedNodes;
              for (k in _ref) {
                n = _ref[k];
                if (((n.nodeFrom == null) && (node.nodeFrom == null) && (n.nodeTo == null) && (node.nodeTo == null) && n.nodeid === node.nodeid) | ((n.nodeFrom != null) && (node.nodeFrom != null) && (n.nodeTo != null) && (node.nodeTo != null) && n.nodeFrom === node.nodeFrom && n.nodeTo === node.nodeTo)) {
                  if (((event.button != null) && event.button === 0) || ((event.srcEvent != null) && event.srcEvent.button === 0)) {
                    $scope.selectedNodes.splice(k, 1);
                  }
                  return;
                }
              }
              pushed = false;
              _ref1 = $scope.selectedNodes;
              for (k in _ref1) {
                n = _ref1[k];
                if (n.nodeid > node.nodeid) {
                  $scope.selectedNodes.splice(k, 0, node);
                  pushed = true;
                  break;
                }
              }
              if (!pushed) {
                $scope.selectedNodes.splice($scope.selectedNodes.length, 0, node);
              }
            } else {
              $scope.selectedNodes = [node];
            }
            ctrl = null;
          };
          $scope.reloadNode = function(nodeId, callback) {
            var action, n;
            if (nodeId != null) {
              n = findNodeById(nodeId, $scope.projects);
              if (n === null) {
                n = findNodeById(nodeId, $scope.ccenter);
              }
              if (n === null) {
                return;
              }
            } else if ($scope.selectedNodes.length === 1) {
              n = $scope.selectedNodes[0];
            } else {
              return;
            }
            if (n.isdir === "0") {
              action = {
                command: 'infonode',
                method: 'index',
                name: _("Node Info")
              };
              loadAction(action, [n]);
              return;

              /* Open the first action in menu
              if not $window.com.ximdex.nodeActions[n.nodeid]?
                  $http.get(xUrlHelper.getAction(
                      action: "browser3"
                      method: "cmenu"
                      nodes: $scope.selectedNodes
                  )).success (data) ->
                      if data
                          $window.com.ximdex.nodeActions[n.nodeid] = data
                          loadAction data[0], [n]
                      return
              else
                  data = $window.com.ximdex.nodeActions[n.nodeid]
                  loadAction data[0], [n]
              return
               */
            }
            n.showNodes = true;
            n.collection = [];
            return $scope.loadNodeChildren(n, callback);
          };
          $scope.navigateToNodeId = function(nodeId) {
            if (nodeId == null) {
              return;
            }
            $http.get(xUrlHelper.getAction({
              method: "getTraverseForPath",
              id: nodeId,
              options: [
                {
                  ajax: "json"
                }
              ]
            })).success(function(data) {
              return postNavigateToNodeId(data);
            });
          };
          postNavigateToNodeId = function(data) {
            var n, nodeList, shifted;
            nodeList = data['nodes'];
            shifted = nodeList.shift();
            if (shifted != null) {
              $scope.reloadNode(shifted.nodeid, callback);
            } else {
              n = findNodeById(nodeId, $scope.projects);
              if (n === null) {
                n = findNodeById(nodeId, $scope.ccenter);
              }
              if (n === null) {
                return;
              }
              $scope.select(n);
            }
            data = null;
            return nodeList = null;
          };
          $scope.doFilter = function() {
            if ($scope.filter.length > 2 && $scope.filter.match(/^[\d\w_\.-]+$/i)) {
              actualFilter = $scope.filter;
              $scope.filterMode = true;
              $scope.projects.showNodes = true;
              $scope.projects.collection = [];
              $scope.loadNodeChildren($scope.projects);
            } else if (actualFilter !== "") {
              actualFilter = "";
              $scope.filterMode = false;
              $scope.projects.showNodes = true;
              $scope.projects.collection = [];
              $scope.loadNodeChildren($scope.projects);
            }
            $scope.selectedNodes = [];
          };
          $scope.clearFilter = function() {
            if ($scope.filter !== '') {
              $scope.filter = '';
              $scope.doFilter();
            }
          };
          $scope.toggleView = function() {
            $scope.treeMode = !$scope.treeMode;
            if ($scope.treeMode === false && $scope.selectedTab === 1) {
              if ($scope.selectedNodes.length > 0 && $scope.selectedNodes[0].path.slice(0, 16) === "/Ximdex/Projects") {
                $scope.loadNodeChildren($scope.selectedNodes[0]);
              } else {
                $scope.loadNodeChildren($scope.projects);
              }
            }
          };
          $scope.goBreadcrums = function(index) {
            var actualNode, i, n, nodeFound, pathToNode, _i, _len, _ref;
            pathToNode = $scope.breadcrumbs.slice(1, index + 1);
            actualNode = $scope.projects;
            nodeFound = false;
            while (pathToNode.length > 0) {
              nodeFound = false;
              _ref = actualNode.collection;
              for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
                n = _ref[i];
                if ((n.name === pathToNode[0] && $scope.filterMode === false) | (n.originalName === pathToNode[0] && $scope.filterMode === true)) {
                  actualNode = n;
                  pathToNode.splice(0, 1);
                  nodeFound = true;
                  break;
                }
              }
              if (nodeFound === false) {
                return;
              }
            }
            $scope.loadNodeChildren(actualNode);
          };
          prepareBreadcrumbs = function() {
            var b, path;
            if ($scope.initialNodeList.nodeid === "0") {
              path = getFolderPath($scope.initialNodeList.collection[0].path);
            } else {
              path = $scope.initialNodeList.path;
            }
            if (path.slice(-1) === "/") {
              path = path.substring(0, path.length - 1);
            }
            if (path.slice(0, 1) === "/") {
              path = path.substring(1, path.length);
            }
            b = path.split("/");
            b.splice(0, 1);
            $scope.breadcrumbs = b;
            if ($scope.initialNodeList.isdir === "0") {
              $scope.goBreadcrums(b.length - 2);
            }
          };
          getFolderPath = function(path) {
            var n;
            n = path.lastIndexOf("/");
            if (n > 0) {
              return path.substring(0, n);
            }
            return path;
          };
          findNodeById = function(nodeId, source) {
            var i, item, queue, _i, _len, _ref;
            queue = [source];
            while (queue.length > 0) {
              item = queue.pop();
              if (item.nodeid === nodeId) {
                return item;
              } else {
                if (item.collection != null) {
                  _ref = item.collection;
                  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                    i = _ref[_i];
                    queue.push(i);
                  }
                }
              }
            }
            return null;
          };
          return $scope.$on('nodemodified', function(event, nodeId) {
            var node;
            node = findNodeById(nodeId, $scope.projects);
            if (node === null) {
              node = findNodeById(nodeId, $scope.ccenter);
            }
            if (node === null) {
              return;
            }
            if (node.isdir === "0") {
              return;
            }
            $scope.selectedNodes = [];
            node.showNodes = true;
            node.collection = [];
            return $scope.loadNodeChildren(node);
          });
        }
      ]
    };
  }
]);
