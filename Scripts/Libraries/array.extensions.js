$.extend(
    Array.prototype,
    {
        where: function (func) {
            var result = [];
            this.each(
                function (item) {
                    if (func(item)) {
                        result.push(item);
                    }
                }
            );
            return result;
        },

        firstOrDefault: function (func, defaultObj) {
            func = func || function () { return true; };
            for (var i = 0; i < this.length; i++) {
                var item = this[i];
                if (func(item)) {
                    return item;
                }
            }
            return defaultObj;
        },

        first: function (func) {
            return this.firstOrDefault(func, null);
        },

        any: function (func) {
            return this.first(func) != null;
        },

        each: function (func) {
            if ($.isFunction(func)) {
                for (var i = 0; i < this.length; i++) {
                    func(this[i], i);
                }
            }
        },

        elementAt: function (index) {
            return this.length > index ? this[index] : null;
        },

        last: function () {
            return this.length > 0 ? this[this.length - 1] : null;
        },

        clear: function () {
            this.splice(0, this.length);
        },

        removeAt: function (index) {
            this.splice(index, 1);
        },

        skip: function (count) {
            return this.slice(count);
        },

        indexOf: function (item) {
            for (var i = 0; i < this.length; i++) {
                if (this[i] == item) {
                    return i;
                }
            }
            return -1;
        }
    }
);