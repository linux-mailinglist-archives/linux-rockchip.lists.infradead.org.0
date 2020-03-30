Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B9319868D
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 23:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iZufZCOUU4u3O5/DnRJOqMacn2/iXAQPDo9G7rMPnes=; b=gSnIorCdjtVlOOQWERPbu1QFd
	4SEO1GmJrk59hckFeascnGh94ckIIFvTeppq2q6/38tvgmKojsOzjQBjzobkAGbUN2eaO19S5s4KW
	EVDE0bImPJoAHCRUDMy3IsoZqzZJ4bQplNcy6Pr3et9WB9v6LaKutgXQoDAwN1C1Bcmr8kxsP4xPg
	OF16WAmg1gBrH/79llfFjHZwByEd+qPiffQSq9VH3lWI7tr5j5RnStOrutlWpiJnJxRso1pQTWHhO
	ZMlvQDPxSC4IRcz23Q1DGe1S5RrYSJmw26rreu1rxsL4N3y1u7LPuGe409qT+7OgoY3Qq5X8CArCE
	OZwJAw1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1zx-0002ii-1k; Mon, 30 Mar 2020 21:31:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1zg-0002XC-Ck; Mon, 30 Mar 2020 21:30:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 32AC5296540
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
In-Reply-To: <4a9d2d6e5cecbe296c14119d27a8793a7dbed7b2.camel@collabora.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
 <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
 <4a9d2d6e5cecbe296c14119d27a8793a7dbed7b2.camel@collabora.com>
Date: Tue, 31 Mar 2020 00:31:56 +0300
Message-ID: <877dz134xf.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_143052_568373_74B9F0A8 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE
 IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020, Ezequiel Garcia <ezequiel@collabora.com> 
wrote:
> Hello Fabio, Adrian: 
> 
> On Mon, 2020-03-30 at 08:49 -0300, Fabio Estevam wrote: 
>> Hi Adrian,  On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu 
>> <adrian.ratiu@collabora.com> wrote: 
>> > This adds support for the Synopsis DesignWare MIPI DSI v1.01 
>> > host controller which is embedded in i.MX 6 SoCs.   Based on 
>> > following patches, but updated/extended to work with existing 
>> > support found in the kernel:  - drm: imx: Support Synopsys 
>> > DesignWare MIPI DSI host controller 
>> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com> 
>> >  - ARM: dtsi: imx6qdl: Add support for MIPI DSI host 
>> > controller 
>> >   Signed-off-by: Liu Ying <Ying.Liu@freescale.com> 
>>  This one looks like a devicetree patch, but this patch does 
>> not touch devicetree.  
>> > +       ret = clk_prepare_enable(dsi->pllref_clk); +       if 
>> > (ret) { +               dev_err(dev, "%s: Failed to enable 
>> > pllref_clk\n", __func__); +               return ret; + 
>> > } + +       dsi->mux_sel = 
>> > syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr"); + 
>> > if (IS_ERR(dsi->mux_sel)) { +               ret = 
>> > PTR_ERR(dsi->mux_sel); +               dev_err(dev, "%s: 
>> > Failed to get GPR regmap: %d\n", + 
>> > __func__, ret); +               return ret; 
>>  You should disable the dsi->pllref_clk clock prior to 
>> returning the error.  
> 
> Another approach could be moving the clock on and off to to 
> component_ops.{bind,unbind} (as rockhip driver does). 
> 
> What exactly is the PLL clock needed for? Would it make sense to 
> move it some of the PHY power on/off? (Maybe not, but it's 
> worthing checking). 
> 
> Also, it seems the other IP blocks have this PLL clock, so maybe 
> it could be moved to the dw_mipi_dsi core? This could be 
> something for a follow-up, to avoid creeping this series.

Hi Ezequiel,

pll is the video reference clock which drives the data lanes and 
yes all drivers have it as it's a basic requirement, so moving it 
to the common bridge is indeed a good idea, however this kind of 
driver refactoring is out of scope for this specific patch series, 
because, for now, I'd like to get the regmap and the imx6 driver 
in, once that is done we can think how to further abstract away 
common logic and slim down the existing drivers further.

Basically I just want to avoid feature creep as I expect v6 to be 
~ 8 patches big and the series is already over 1200 lines.

Thank you,
Adrian

>
> Thanks,
> Ezequiel
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
