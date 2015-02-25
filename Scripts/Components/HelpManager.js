Type.registerNamespace('Magelia.WebStore');

Magelia.WebStore.HelpManager = function (documentationUrl, helpKey, helpMap) {
    this.helpKey = helpKey;
    this.documentationUrl = documentationUrl;
    this.helpMap = $.isArray(helpMap) ? helpMap : new Array();
};

Magelia.WebStore.HelpManager.prototype = {
    initialize: function () {
        this.setEventHandlers();
        this.updateHelpLinksVisibility();
    },

    setEventHandlers: function () {
        this.getHelpLinks().click($.proxy(this.showHelp, this));
    },

    getHelpLinks: function () {
        return $('a.help');
    },

    updateHelpLinksVisibility: function () {
        this.setHelpLinksVisibility(this.helpKey);
    },

    setHelpLinksVisibility: function (visible) {
        var links = this.getHelpLinks();
        if (visible) {
            links.show();
        }
        else {
            links.hide();
        }
    },

    combine: function () {
        var segments = new Array();
        for (var i = 0; i < arguments.length ; i++) {
            var segment = arguments[i];
            if (segment) {
                if (segment[0] == '/' && segment.length > 1) {
                    segment = segment.substr(1);
                }
                if (segment.length > 1 && segment[segment.length - 1] == '/') {
                    segment = segment.substr(0, segment.length - 1);
                }
                if (segment) {
                    segments.push(segment);
                }
            }
        }
        return segments.join('/');
    },

    getHelpUrl: function () {
        if (this.helpKey) {
            return this.helpKey.indexOf('http') == 0 ? this.helpKey : (this.combine(this.documentationUrl, this.helpKey + (this.subPath ? this.subPath : '')) + '?help=true');
        }
    },

    showHelp: function () {
        var helpUrl = this.getHelpUrl();
        if (helpUrl) {
            if (!this.helpWindow || this.helpWindow.closed) {
                this.helpWindow = window.open(helpUrl, 'HelpWindow', 'width=990,height=800,scrollbars=yes,resizable=yes,directories=no,location=no,menubar=no,status=no,toolbar=no');
            }
            if (this.helpWindow) {
                this.helpWindow.focus();
            }
        }
    },

    setSubPath: function (subPath) {
        if (subPath && subPath[0] != '.') {
            subPath = '.' + subPath;
        }
        this.subPath = subPath;
    },

    setHelpKeyByFeature: function (feature) {
        this.setHelpKey('feature', feature);
    },

    setHelpKeyByResourceKey: function (resourceKey) {
        this.setHelpKey('resourceKey', resourceKey);
    },

    setHelpKey: function (property, value) {
        var helpKey = null;
        if (value) {
            value = value.toLowerCase();
        }
        for (var i = 0; i < this.helpMap.length; i++) {
            var entry = this.helpMap[i];
            if ($.isPlainObject(entry) && entry[property] && entry[property].toLowerCase() == value) {
                helpKey = entry.helpKey;
                break;
            }
        }
        this.subPath = null;
        this.helpKey = helpKey;
    }
};