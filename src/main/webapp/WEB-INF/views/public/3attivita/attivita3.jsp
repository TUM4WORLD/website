<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<style>
    /* Stile dell'intestazione (titolo) */
    .content h2 {
        font-size: 24px;
        margin-bottom: 10px;
    }

    /* Stile del paragrafo */
    .content p {
        font-size: 16px;
        line-height: 1.6;
    }
</style>
<jsp:include page="/WEB-INF/views/header.jsp" >
    <jsp:param name="title" value="Visita le scuole" />
</jsp:include>

<div class="content">
    <img style="border-radius: 5px;" src="${pageContext.request.contextPath}/images/scuola2.jpg" alt="Image" width="500">
    <h2>Visita le scuole</h2>
    <div class="row">
        <p>Come volontario di Tum4World potrai viaggiare nelle scuole di tutta Italia per sensibilizzare i pi&#249 giovani alla cura dei nostri amici animali. Insieme ad altri volontari organizzerete dei workshop per far scoprire ai bambini e ai ragazzi cosa significa essere responsabile di un animale per soddisfare tutte le sue esigenze. La Missione di Tum4World &#232 non solo quella di accudire i nostri amici animali pi&#249 sfortunati nel nostro Rifugio, ma di assicurarci che non si verifichino nuovi abbandoni e maltrattamenti.</p>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"/>