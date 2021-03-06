<div id="wrapper">
    <h1 id="title">打撃成績計算</h1>
    <p>以下に打撃成績を入力し、「計算」ボタンをクリックしてください。</p>
    <form:form name="myForm" onsubmit="return checkText()" action="${pageContext.request.contextPath}/bpms/create"
    			method="post" modelAttribute="bpmsForm">
    			<spring:message code="plate_appearance" />　：<form:input path="plate_appearance"/><form:errors path="plate_appearance" cssClass="error-messages" /><br>
    			<spring:message code="hit" />　：<form:input path="hit"/><form:errors path="hit" cssClass="error-messages" /><br>
    			<spring:message code="two_base_hit" />：<form:input path="two_base_hit"/><form:errors path="two_base_hit" cssClass="error-messages" /><br>
    			<spring:message code="three_base_hit" />：<form:input path="three_base_hit"/><form:errors path="three_base_hit" cssClass="error-messages" /><br>
    			<spring:message code="home_run" />：<form:input path="home_run"/><form:errors path="home_run" cssClass="error-messages" /><br>
    			<spring:message code="walks" />　：<form:input path="walks"/><form:errors path="walks" cssClass="error-messages" /><br>
    			<spring:message code="hit_by_pitch" />　：<form:input path="hit_by_pitch"/><form:errors path="hit_by_pitch" cssClass="error-messages" /><br>
    			<spring:message code="sacrifice_bunt" />　：<form:input path="sacrifice_bunt"/><form:errors path="sacrifice_bunt" cssClass="error-messages" /><br>
    			<spring:message code="sacrifice_fly" />　：<form:input path="sacrifice_fly"/><form:errors path="sacrifice_fly" cssClass="error-messages" /><br>
    			<spring:message code="faux_pas" />　：<form:input path="faux_pas"/><form:errors path="faux_pas" cssClass="error-messages" /><br>
    			<form:button >計算</form:button>
    </form:form>
    <script>
    	function checkText() {
        	var result = window.confirm("計算してもよろしいですか？");
        	if (result){
            	return true;
            	}
        	else {
            	return false;
            	}
        	}
    </script>
    
    <form:form action="${pageContext.request.contextPath}/bpms/upload" method="post" modelAttribute="bpmsForm" enctype="multipart/form-data">
      <table>
        <tr>
          <th width="35%">File to upload</th>
          <td width="65%">
            <form:input type="file" path="file" />
            <form:errors path="file" />
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><form:button>Upload</form:button></td>
        </tr>
      </table>
    </form:form>
</div>
