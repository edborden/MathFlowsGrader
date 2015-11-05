`import Ember from 'ember'`

IndexRoute = Ember.Route.extend

  model: -> [
    {content:'♣',color:"orange",src:"block_images/yrvy7zbxhkutqmuwy2fk"},
    {content:'♦',color:"red",src:"block_images/rqomxlhf64xdye4fdiyz"},
    {content:'♥',color:"yellow",src:"block_images/cjyvgaj5acjgxbsavk66"},
    {content:'♠',color:"green",src:"block_images/i6rbe1od5lpd6fbw6zqy"}
  ]

`export default IndexRoute`