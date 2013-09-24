<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript" src="bootstrap/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>

<script type="text/javascript">
	$(function() {
		$(".tip").tooltip();
	});
</script>

<title>Currency Calculator</title>
</head>
<body>
	<div class="container">
		<div class="hero-unit">
			<f:view>
				<h:form>
					<h:panelGrid columns="2">
						<h:outputLabel value="Euro"></h:outputLabel>
						<h:inputText value="#{currencyConvertor.euro}"></h:inputText>
					</h:panelGrid>

					<a class="tip" data-toggle="tooltip" data-placement="bottom"
						title="click to calculate"> <h:commandButton
							action="#{currencyConvertor.euroToDollar}" value="Calculate" />
					</a>


					<h:commandButton action="#{currencyConvertor.reset}" value="Reset"></h:commandButton>
					<h:messages layout="table"></h:messages>
				</h:form>


				<h:panelGroup rendered="#{currencyConvertor.initial!=true}">
					<h3>Result</h3>
					<h:outputLabel value="Dollar "></h:outputLabel>
					<h:outputLabel value="#{currencyConvertor.dollar}"></h:outputLabel>
				</h:panelGroup>
			</f:view>
		</div>
		<p>
			<a class="tip" data-toggle="tooltip" data-placement="right"
				title="That's a tooltip!"> hover to show tooltip </a>
		</p>
	</div>
</body>
</html>