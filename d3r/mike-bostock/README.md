This example shows how to implement Ann K. Emery’s technique of placings labels [directly on top of a line](http://annkemery.com/line-graph-labeling-how-to/) in [D3](https://d3js.org) [4.0 Alpha](https://github.com/mbostock/d3/tree/4).

To construct the [multi-series line chart](/mbostock/3884955), the data is first transformed into separate arrays for each series. (The series names are automatically derived from the columns in the TSV file, thanks to a new [*dsv*.parse](https://github.com/d3/d3-dsv#dsv_parse) feature.)

```js
var series = data.columns.slice(1).map(function(key) {
  return data.map(function(d) {
    return {
      key: key,
      date: d.date,
      value: d[key]
    };
  });
});
```

A label is rendered for each point in each series. Beneath this label, a white rectangle is added, whose size and position is computed automatically using [*element*.getBBox](https://www.w3.org/TR/SVG/types.html#__svg__SVGLocatable__getBBox) plus a little bit of padding. The resulting label is thus legible. The last label for each series gets an additional tspan to show the series name.
