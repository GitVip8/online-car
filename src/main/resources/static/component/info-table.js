/**
 *
 * @Description  TODO
 *
 * @Author sun
 *
 * @Date 2019/3/7 22:20
 **/

if (Vue) {
    Vue.component('info-table', {
        props: ['cols', 'items'],
        created: function () {
        },
        data: function () {
            return {
                count: 0
            }
        },
        template:
            '<div>' +
                '<table class="info-table" v-for="(item,index0) in items" :key="index0">' +
                    '<tr>' +
                        '<td :colspan="2*cols">{{item.name}}</td>' +
                    '</tr>' +
                    '<tr v-for="a in (item.properties.length%cols==0?item.properties.length/cols:(parseInt(item.properties.length/cols) + 1))">' +
                        '<template  v-for="b in cols">' +
                            '<template v-if="item.properties[(a-1)*cols + (b-1)]">' +
                                '<td>{{(item.properties[(a-1)*cols + (b-1)]?item.properties[(a-1)*cols + (b-1)].key:"")}}</td>' +
                                '<td>{{item.properties[(a-1)*cols + (b-1)]?item.properties[(a-1)*cols + (b-1)].value:""}}</td>' +
                            '</template>' +
                            '<template v-else>' +
                                '<td></td><td></td>' +
                            '</template>' +
                        '</template>' +
                    '</tr>' +
                '</table>' +
            '</div>'
    })
} else
    console.warn('info-table component need Vue.js');
