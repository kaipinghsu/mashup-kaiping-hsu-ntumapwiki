<gm:page title="臺大維基地圖" authenticate="true">

  <!--
    Rewrite form GME Map Wiki
    @author: kphsu@ntu.edu.tw
    @date: 2007-11-29
  
    The map wiki application demonstrates the the ability to use the 
    map object to create wiki like experience for maps.
    @author: GME Team
  -->

  <div class="gm-app-header">
    <h1>臺大維基地圖</h1>
    大家一起來把這個地圖補完
    </div>

  <table style="width:100%">
    <tr>
      <td style="padding:20px; width:700px">
        <gm:map id="myMap" data="${myList}" control="large"
            infotemplate="myMapDetailsTemplate" width="700px" height="500px" 
            lat="25.017932" lng="121.539806" zoom="16" maptypes="true" create="true">
          <gm:handleEvent src="myList"/>
         </gm:map>
      </td>
      <td valign="top" align="left" style="padding:20 20 20 0;">
        <gm:list id="myList" data="${app}/markers" template="myListTemplate">
          <gm:handleEvent src="myMap"/>
        </gm:list>
      </td>
    </tr>
  </table>

  <gm:template id="myMapDetailsTemplate">
    <table style="width:300px">
      <tr>
        <td colspan="2"><gm:text ref="atom:title"/></td>
      </tr>
      <tr>
        <td colspan="2"><gm:rating ref="gd:rating"/></td>
      </tr>
      <tr>
        <td colspan="2"><gm:textarea ref="atom:content"/></td>
      </tr>
      <tr>
        <td colspan="2"><gm:editButtons editonly="true" text="true"/></td>
      </tr>
    </table>
  </gm:template>

  <gm:template id="myListTemplate">
    <table class="blue-theme" style="width:100%">
      <thead>
        <tr>
          <td style="width:40px"></td>
          <td>Name</td>
          <td style="width:90px">Rating</td>
          <td style="width:45px"></td>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <td colspan="2"><gm:pager/></td>
          <td colspan="2" align="right"><gm:create label="Add"/></td>
        </tr>
      </tfoot>
      <tbody repeat="true">
        <tr>
          <td align="center"><gm:toggle/></td>
          <td><gm:text ref="atom:title" hint="Enter title."/></td>
          <td><gm:rating ref="gd:rating"/></td>
          <td><gm:editButtons/></td>
        </tr>     
        <tr class="gm-toggled">
          <td colspan="4">
            <gm:textarea ref="atom:content"/>
            <p>
              <gm:text ref="georss:where/gml:Point/gml:pos" readonly="true"/>
            </p>
          </td>
        </tr>
      </tbody>
    </table>
  </gm:template>

  </gm:page>
