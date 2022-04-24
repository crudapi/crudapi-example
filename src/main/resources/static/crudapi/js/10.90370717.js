(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[10],{4342:function(e,t,s){"use strict";s.r(t);var n=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"q-pa-md q-gutter-sm"},[s("q-breadcrumbs",[s("q-breadcrumbs-el",{attrs:{label:"序列号管理"}}),s("q-breadcrumbs-el",{attrs:{label:"编辑"}}),s("q-breadcrumbs-el",{attrs:{label:e.sequence.caption}})],1),s("q-separator"),s("form",{staticClass:"q-pb-md",on:{submit:function(t){return t.preventDefault(),t.stopPropagation(),e.onSubmit.apply(null,arguments)}}},[s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("编号:")]),s("div",{staticClass:"col-7 text-subtitle2"},[e._v(e._s(e.sequence.id))])]),s("div",{staticClass:"row items-baseline content-center justify-start"},[s("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[e._v("编码:")]),s("q-input",{ref:"sequence.name",staticClass:"col-7",attrs:{placeholder:"请输入序号编码，如productCode","lazy-rules":"",rules:[function(e){return e&&e.length>0||"不能为空"}]},model:{value:e.sequence.name,callback:function(t){e.$set(e.sequence,"name",t)},expression:"sequence.name"}})],1),s("div",{staticClass:"row items-baseline content-center justify-start"},[s("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[e._v("名称:")]),s("q-input",{ref:"sequence.caption",staticClass:"col-7",attrs:{placeholder:"请输入序号名称，如产品code流水号","lazy-rules":"",rules:[function(e){return e&&e.length>0||"不能为空"}]},model:{value:e.sequence.caption,callback:function(t){e.$set(e.sequence,"caption",t)},expression:"sequence.caption"}})],1),s("div",{staticClass:"row items-baseline content-center justify-start"},[s("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[e._v("类型:")]),s("q-select",{staticClass:"col-7",attrs:{outlined:"",options:e.sequenceTypeOptions,"emit-value":"","map-options":""},model:{value:e.sequence.sequenceType,callback:function(t){e.$set(e.sequence,"sequenceType",t)},expression:"sequence.sequenceType"}})],1),e.isNotGuid?s("div",[s("div",{staticClass:"row items-center content-center justify-start"},[s("div",{staticClass:"col-3 text-right required text-subtitle2 q-pr-md"},[e._v("时间戳:")]),s("q-toggle",{staticClass:"col-7",model:{value:e.sequence.currentTime,callback:function(t){e.$set(e.sequence,"currentTime",t)},expression:"sequence.currentTime"}})],1),e.isHasFormat?s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("格式:")]),s("q-input",{ref:"sequence.format",staticClass:"col-7",attrs:{placeholder:"请输入格式，如P%d"},model:{value:e.sequence.format,callback:function(t){e.$set(e.sequence,"format",t)},expression:"sequence.format"}})],1):e._e(),e.sequence.currentTime?e._e():s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("最小值:")]),s("q-input",{ref:"sequence.minValue",staticClass:"col-7",attrs:{type:"number",placeholder:"请输入最小值，如1"},model:{value:e.sequence.minValue,callback:function(t){e.$set(e.sequence,"minValue",t)},expression:"sequence.minValue"}})],1),e.sequence.currentTime?e._e():s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("最大值:")]),s("q-input",{ref:"sequence.maxValue",staticClass:"col-7",attrs:{type:"number",placeholder:"请输入最大值，如999999999"},model:{value:e.sequence.maxValue,callback:function(t){e.$set(e.sequence,"maxValue",t)},expression:"sequence.maxValue"}})],1),e.sequence.currentTime?e._e():s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("下一个值:")]),s("q-input",{ref:"sequence.nextValue",staticClass:"col-7",attrs:{type:"number",placeholder:"请输入下一个值，如1"},model:{value:e.sequence.nextValue,callback:function(t){e.$set(e.sequence,"nextValue",t)},expression:"sequence.nextValue"}})],1),e.sequence.currentTime?e._e():s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("步长:")]),s("q-input",{ref:"sequence.incrementBy",staticClass:"col-7",attrs:{type:"number",placeholder:"请输入步长，如1"},model:{value:e.sequence.incrementBy,callback:function(t){e.$set(e.sequence,"incrementBy",t)},expression:"sequence.incrementBy"}})],1),s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("创建时间:")]),s("div",{staticClass:"col-7 text-subtitle2"},[e._v(e._s(e._f("dateTimeFormat")(e.sequence.createdDate)))])]),s("div",{staticClass:"row items-baseline content-center justify-start q-py-md"},[s("div",{staticClass:"col-3 text-right text-subtitle2 q-pr-md"},[e._v("修改时间:")]),s("div",{staticClass:"col-7 text-subtitle2"},[e._v(e._s(e._f("dateTimeFormat")(e.sequence.lastModifiedDate)))])])]):e._e(),s("div",{staticClass:"row justify-center q-py-md"},[s("q-btn",{attrs:{unelevated:"",type:"submit",color:"primary",label:"保存"}})],1)])],1)},a=[],i=s("c973"),c=s.n(i),r=(s("96cf"),s("8e44")),u=s("ed08"),l=s("11ec"),o={data:function(){return{sequenceTypeOptions:[{value:"LONG",label:"数字"},{value:"STRING",label:"字符串"},{value:"GUID",label:"GUID"}],sequence:{}}},created:function(){this.init(),console.info("created")},mounted:function(){console.info("mounted")},activated:function(){console.info("activated")},deactivated:function(){console.info("deactivated")},updated:function(){console.info("updated")},destroyed:function(){console.info("destroyed")},beforeRouteUpdate:function(e,t,s){console.info("beforeRouteUpdate"),this.init(e.params.id),s()},filters:{dateTimeFormat:function(e){return u["a"].dateTimeFormat(e)}},computed:{isHasFormat:function(){return"STRING"===this.sequence.sequenceType},isNotGuid:function(){return"GUID"!==this.sequence.sequenceType}},methods:{init:function(e){var t=this;return c()(regeneratorRuntime.mark((function s(){return regeneratorRuntime.wrap((function(s){while(1)switch(s.prev=s.next){case 0:return console.info("init"),t.$store.commit("config/updateIsAllowBack",t.$route.meta.isAllowBack),s.next=4,t.loadData(e);case 4:case"end":return s.stop()}}),s)})))()},loadData:function(e){var t=this;return c()(regeneratorRuntime.mark((function s(){var n;return regeneratorRuntime.wrap((function(s){while(1)switch(s.prev=s.next){case 0:return s.prev=0,s.next=3,r["d"].get(e||t.$route.params.id);case 3:n=s.sent,console.info(n),t.sequence=n,s.next=11;break;case 8:s.prev=8,s.t0=s["catch"](0),console.error(s.t0);case 11:case"end":return s.stop()}}),s,null,[[0,8]])})))()},onSubmit:function(){var e=this;return c()(regeneratorRuntime.mark((function t(){var s;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e.$q.loading.show({message:"提交中"}),t.prev=1,s=Object(l["a"])(!0,{},e.sequence),s.currentTime&&(delete s.minValue,delete s.maxValue,delete s.nextValue,delete s.incrementBy),t.next=6,r["d"].update(e.$route.params.id,s);case 6:e.$q.loading.hide(),e.$q.notify("修改成功"),e.loadData(),t.next=15;break;case 11:t.prev=11,t.t0=t["catch"](1),e.$q.loading.hide(),console.info(t.t0);case 15:case"end":return t.stop()}}),t,null,[[1,11]])})))()}}},d=o,m=(s("a1cd"),s("2877")),p=s("ead5"),q=s("079e"),f=s("eb85"),v=s("27f9"),b=s("ddd8"),x=s("9564"),y=s("9c40"),h=s("eebe"),C=s.n(h),g=Object(m["a"])(d,n,a,!1,null,null,null);t["default"]=g.exports;C()(g,"components",{QBreadcrumbs:p["a"],QBreadcrumbsEl:q["a"],QSeparator:f["a"],QInput:v["a"],QSelect:b["a"],QToggle:x["a"],QBtn:y["a"]})},"6fc3":function(e,t,s){},a1cd:function(e,t,s){"use strict";s("6fc3")}}]);