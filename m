Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1011E8266
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 17:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CsphOXR6yB1f5MKtE2E4RrE4DKt6KPv1r3IYODff1o=; b=cS53TCeAR9e9+E
	ucfdNGW103+wqfyNp6cXkyrwE6DplkPy04+DUVPKxSxZKhzHbgjt/8vl73I/oPX3p3vyThTbFz4zj
	3NSXEl4W1U6xOLZPOFuE8OivXCsfrV3zq6ykQSI4PSxJJz7engor4uBZLRA1dzK911vu5vqqmZTbv
	JrfMtxvwZuageoZxGCk87nxaj5RVhWpqqzxB+RoY5V8iLvNX9xVBNhsBVklii/i6qSVT0E5DhNg/N
	8/1BdCiNIbbmHf7cT2QNWyExYM4dgd1cxkTEpJ7NWaAR9aDA2DKM+V1ZVMIbN+JrFWUsHC8npofCH
	/StbZLmimPXGelTNAakQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehCv-0001hU-5N; Fri, 29 May 2020 15:46:05 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehCr-0001gT-Vl; Fri, 29 May 2020 15:46:03 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04TFbsGw004565; Fri, 29 May 2020 17:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=MUqHOgczk7YoJhh076iqGU09+X0d5LSpCvIgcaIw6hU=;
 b=q0oGSqWCvjiL3B4zk68Matq7A+gu2efgaP+G8uXEWnPc9o93OqEZ1vtb4usPssjrtLVn
 3meynMM4VDckBEJXGrXxCWOlCCKGk5K1EZVzmfTIx6kHKYlqVkJe73c3V50QYhqWquCE
 rutWC0WF5G+S/sDfzfx7nedXU0esELuaNrx5OigSCARnKYp1uhBUh2v/dCQVHaeY0e/F
 bwLlh6ThmCAdDee8QwGDK7BrpFTZV2a6MUMukwAJSChKy0RfewWwop5Cklp4Jam8y8YA
 psmO5/z8OTrHe6lPz4UFItkpbhQC0zvpagrl6lH8jYu2gtaF3dCsvNgSm+TN/JfVuwwu bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316tqhhpwj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 May 2020 17:45:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 48A0E100034;
 Fri, 29 May 2020 17:45:45 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DFC542B1893;
 Fri, 29 May 2020 17:45:44 +0200 (CEST)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 29 May
 2020 17:45:44 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 29 May 2020 17:45:44 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>
Subject: Re: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
Thread-Topic: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
Thread-Index: AQHWNdA2P+mlUH/UMUatFbM8/3eWsg==
Date: Fri, 29 May 2020 15:45:44 +0000
Message-ID: <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-9-adrian.ratiu@collabora.com>
In-Reply-To: <20200427081952.3536741-9-adrian.ratiu@collabora.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <EB516333C6BA834A9DE9BB87A8FFBD44@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-29_08:2020-05-28,
 2020-05-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_084602_482143_C7E67258 
X-CRM114-Status: GOOD (  26.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Adrian,
and thank you very much for the patchset.
Thank you also for having tested it on STM32F769 and STM32MP1.
Sorry for the late response, Yannick and I will review it as soon as 
possible and we will keep you posted.
Note: Do not hesitate to put us in copy for the next version 
(philippe.cornu@st.com, yannick.fertre@st.com)
Regards,
Philippe :-)


On 4/27/20 10:19 AM, Adrian Ratiu wrote:
> The stm mipi-dsi platform driver added a version test in
> commit fa6251a747b7 ("drm/stm: dsi: check hardware version")
> so that HW revisions other than v1.3x get rejected. The rockchip
> driver had no such check and just assumed register layouts are
> v1.3x compatible.
> 
> Having such tests was a good idea because only v130/v131 layouts
> were supported at the time, however since adding multiple layout
> support in the bridge, the version is automatically checked for
> all drivers, compatible layouts get picked and unsupported HW is
> automatically rejected by the bridge, so there's no use keeping
> the test in the stm driver.
> 
> The main reason prompting this change is that the stm driver
> test immediately disabled the peripheral clock after reading
> the version, making the bridge read version 0x0 immediately
> after in its own probe(), so we move the clock disabling after
> the bridge does the version test.
> 
> Tested on STM32F769 and STM32MP1.
> 
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Reported-by: Adrian Pop <pop.adrian61@gmail.com>
> Tested-by: Adrian Pop <pop.adrian61@gmail.com>
> Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
> New in v6.
> ---
>   drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> index 2e1f2664495d0..7218e405d7e2b 100644
> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> @@ -402,15 +402,6 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>   		goto err_dsi_probe;
>   	}
>   
> -	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
> -	clk_disable_unprepare(pclk);
> -
> -	if (dsi->hw_version != HWVER_130 && dsi->hw_version != HWVER_131) {
> -		ret = -ENODEV;
> -		DRM_ERROR("bad dsi hardware version\n");
> -		goto err_dsi_probe;
> -	}
> -
>   	dw_mipi_dsi_stm_plat_data.base = dsi->base;
>   	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
>   
> @@ -423,6 +414,9 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>   		goto err_dsi_probe;
>   	}
>   
> +	dsi->hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
> +	clk_disable_unprepare(pclk);
> +
>   	return 0;
>   
>   err_dsi_probe:
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
