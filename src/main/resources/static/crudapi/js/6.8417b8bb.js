(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[6],{a1d8:function(t,e,a){},af49:function(t,e,a){"use strict";a("a1d8")},b565:function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"q-pa-md q-gutter-sm"},[a("q-breadcrumbs",[a("q-breadcrumbs-el",{attrs:{label:"表关系管理"}}),a("q-breadcrumbs-el",{attrs:{label:"编辑"}}),a("q-breadcrumbs-el",{attrs:{label:t.metadataRelation.caption}})],1),a("q-separator"),a("form",{staticClass:"q-pb-md",on:{submit:function(e){return e.preventDefault(),e.stopPropagation(),t.onSubmit.apply(null,arguments)}}},[a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[t._v("编号:")]),a("div",{staticClass:"col-7 text-subtitle2"},[t._v(t._s(t.metadataRelation.id))])]),a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[t._v("类型:")]),a("q-select",{staticClass:"col-7",attrs:{outlined:"",options:t.relationTypeOptions,"emit-value":"","map-options":""},model:{value:t.metadataRelation.relationType,callback:function(e){t.$set(t.metadataRelation,"relationType",e)},expression:"metadataRelation.relationType"}})],1),a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[t._v("源表:")]),a("q-select",{staticClass:"col-7",attrs:{outlined:"",options:t.tableOptions,"option-label":"caption","option-value":"id","map-options":""},on:{input:t.onFromTableUpdate},model:{value:t.metadataRelation.fromTable,callback:function(e){t.$set(t.metadataRelation,"fromTable",e)},expression:"metadataRelation.fromTable"}})],1),a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[t._v("源列:")]),a("q-select",{staticClass:"col-7",attrs:{outlined:"",options:t.fromColumnOptions,"option-label":"caption","option-value":"id","map-options":""},model:{value:t.metadataRelation.fromColumn,callback:function(e){t.$set(t.metadataRelation,"fromColumn",e)},expression:"metadataRelation.fromColumn"}})],1),a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[t._v("目标表:")]),a("q-select",{staticClass:"col-7",attrs:{outlined:"",options:t.tableOptions,"option-label":"caption","option-value":"id","map-options":""},on:{input:t.onToTableUpdate},model:{value:t.metadataRelation.toTable,callback:function(e){t.$set(t.metadataRelation,"toTable",e)},expression:"metadataRelation.toTable"}})],1),a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[t._v("目标列:")]),a("q-select",{staticClass:"col-7",attrs:{outlined:"",options:t.toColumnOptions,"option-label":"caption","option-value":"id","map-options":""},model:{value:t.metadataRelation.toColumn,callback:function(e){t.$set(t.metadataRelation,"toColumn",e)},expression:"metadataRelation.toColumn"}})],1),a("div",{staticClass:"row items-baseline content-center justify-start"},[a("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[t._v("英文名称:")]),a("q-input",{ref:"metadataRelation.name",staticClass:"col-7",attrs:{placeholder:"请输入关系英文名称，如products","lazy-rules":"",rules:[function(t){return t&&t.length>0||"不能为空"}]},model:{value:t.metadataRelation.name,callback:function(e){t.$set(t.metadataRelation,"name",e)},expression:"metadataRelation.name"}})],1),a("div",{staticClass:"row items-baseline content-center justify-start"},[a("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[t._v("中文名称:")]),a("q-input",{ref:"metadataRelation.caption",staticClass:"col-7",attrs:{placeholder:"请输入关系中文名称","lazy-rules":"",rules:[function(t){return t&&t.length>0||"不能为空"}]},model:{value:t.metadataRelation.caption,callback:function(e){t.$set(t.metadataRelation,"caption",e)},expression:"metadataRelation.caption"}})],1),a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[t._v("创建时间:")]),a("div",{staticClass:"col-7 text-subtitle2"},[t._v(t._s(t._f("dateTimeFormat")(t.metadataRelation.createdDate)))])]),a("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[a("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[t._v("修改时间:")]),a("div",{staticClass:"col-7 text-subtitle2"},[t._v(t._s(t._f("dateTimeFormat")(t.metadataRelation.lastModifiedDate)))])]),a("div",{staticClass:"row justify-center"},[a("q-btn",{attrs:{unelevated:"",type:"submit",color:"primary",label:"保存"}})],1)])],1)},o=[],i=a("c973"),l=a.n(i),s=(a("4de4"),a("d3b7"),a("7db0"),a("b0c0"),a("96cf"),a("8e44")),r=a("ed08"),c={data:function(){return{loading:!0,tableOptions:[],relationTypeOptions:[{value:"OneToMany",label:"一对多"},{value:"ManyToOne",label:"多对一"},{value:"OneToOneMainToSub",label:"一对一(主子)"},{value:"OneToOneSubToMain",label:"一对一(子主)"}],fromColumnOptions:[],toColumnOptions:[],metadataRelation:{},fromColumn:null,toColumn:null}},created:function(){this.init(),console.info("created")},mounted:function(){console.info("mounted")},activated:function(){console.info("activated")},deactivated:function(){console.info("deactivated")},updated:function(){console.info("updated")},destroyed:function(){console.info("destroyed")},beforeRouteUpdate:function(t,e,a){console.info("beforeRouteUpdate"),this.init(t.params.id),a()},filters:{dateTimeFormat:function(t){return r["a"].dateTimeFormat(t)}},methods:{init:function(t){var e=this;return l()(regeneratorRuntime.mark((function a(){return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return console.info("init"),e.$store.commit("config/updateIsAllowBack",e.$route.meta.isAllowBack),a.next=4,e.loadData(t);case 4:case"end":return a.stop()}}),a)})))()},isCanRelation:function(t){return"TINYINT"===t.dataType||"SMALLINT"===t.dataType||"MEDIUMINT"===t.dataType||"INT"===t.dataType||"BIGINT"===t.dataType||"CHAR"===t.dataType||"VARCHAR"===t.dataType},onFromTableUpdate:function(){var t=this;console.info("onFromTableUpdate"),this.fromColumn=null,this.metadataRelation.fromTable?this.fromColumnOptions=this.metadataRelation.fromTable.columns.filter((function(e){return t.isCanRelation(e)})):this.fromColumnOptions=[]},onToTableUpdate:function(){var t=this;console.info("onToTableUpdate"),this.toColumn=null,this.metadataRelation.toTable?this.toColumnOptions=this.metadataRelation.toTable.columns.filter((function(e){return t.isCanRelation(e)})):this.toColumnOptions=[]},loadData:function(t){var e=this;return l()(regeneratorRuntime.mark((function a(){var n,o;return regeneratorRuntime.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return a.prev=0,e.loading=!0,a.next=4,s["c"].get(t||e.$route.params.id);case 4:return n=a.sent,e.metadataRelation=n,a.next=8,s["e"].list(1,999);case 8:o=a.sent,e.tableOptions=o,e.metadataRelation.fromTable=e.tableOptions.find((function(t){return t.id===e.metadataRelation.fromTable.id})),e.metadataRelation.toTable=e.tableOptions.find((function(t){return t.id===e.metadataRelation.toTable.id})),e.fromColumnOptions=e.metadataRelation.fromTable.columns.filter((function(t){return e.isCanRelation(t)})),e.fromColumn=e.fromColumnOptions.find((function(t){return t.id===e.metadataRelation.fromColumn.id})),e.toColumnOptions=e.metadataRelation.toTable.columns.filter((function(t){return e.isCanRelation(t)})),e.toColumn=e.toColumnOptions.find((function(t){return t.id===e.metadataRelation.toColumn.id})),e.loading=!1,a.next=24;break;case 19:a.prev=19,a.t0=a["catch"](0),e.loading=!1,e.$q.notify(a.t0),console.error(a.t0);case 24:case"end":return a.stop()}}),a,null,[[0,19]])})))()},onSubmit:function(){var t=this;return l()(regeneratorRuntime.mark((function e(){var a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(t.fromColumn){e.next=3;break}return t.$q.notify("源列不能为空！"),e.abrupt("return");case 3:if(t.toColumn){e.next=6;break}return t.$q.notify("目标列不能为空！"),e.abrupt("return");case 6:return t.$q.loading.show({message:"提交中"}),e.prev=7,a={relationType:t.metadataRelation.relationType,name:t.metadataRelation.name,caption:t.metadataRelation.caption,fromTable:{id:t.metadataRelation.fromTable.id},fromColumn:{id:t.fromColumn.id},toTable:{id:t.metadataRelation.toTable.id},toColumn:{id:t.toColumn.id}},e.next=11,s["c"].update(t.$route.params.id,a);case 11:t.$q.loading.hide(),t.$q.notify("修改成功"),t.loadData(),e.next=20;break;case 16:e.prev=16,e.t0=e["catch"](7),t.$q.loading.hide(),console.info(e.t0);case 20:case"end":return e.stop()}}),e,null,[[7,16]])})))()}}},u=c,d=(a("af49"),a("2877")),m=a("ead5"),p=a("079e"),f=a("eb85"),b=a("ddd8"),v=a("27f9"),C=a("9c40"),R=a("eebe"),T=a.n(R),q=Object(d["a"])(u,n,o,!1,null,null,null);e["default"]=q.exports;T()(q,"components",{QBreadcrumbs:m["a"],QBreadcrumbsEl:p["a"],QSeparator:f["a"],QSelect:b["a"],QInput:v["a"],QBtn:C["a"]})}}]);