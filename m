Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF75198658
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 23:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sZaheu6M+zGdwfyy39RYGLfvdNG/zKbWaRCimuZ7Vuk=; b=g/iSPlxZuJ9oTteLkjCn2yM8/
	BIyuOfOezWgZvwQvQr161xYC14Dl8RNPQiUspK1ASrJbBgJwx7Y81RX9wFhp3uaqDlLTExanDTrhx
	jgemD1oyoDx9iFDz7ccbNg9X9+Vm9+d9Or+UpCXM/MBMLaYg8arttCuWbKOZvMEGD+Ker0UjT2h9U
	By/dXh0hUgPKMz8108Bd25IHGBNbthVTa8zVxF7VBFG1ZkqFQNbvo0adCo+wX5rpG60ZPlfDQRx1p
	ZBkuFcTpvj0mB3cP21w6ZxzIA0un7/5+jkeeFnxTIn5fNiTgmqT0r517WDL+53z8JZUd90ouTkITd
	kPW1qI/iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1p2-0004fg-OA; Mon, 30 Mar 2020 21:19:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1on-0004VB-Ua; Mon, 30 Mar 2020 21:19:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 027AC296467
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
In-Reply-To: <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
 <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
Date: Tue, 31 Mar 2020 00:20:42 +0300
Message-ID: <87a73x35g5.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_141938_119308_458CE300 
X-CRM114-Status: GOOD (  13.79  )
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
Cc: "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Martyn Welch <martyn.welch@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Emil Velikov <emil.velikov@collabora.com>, linux-rockchip@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020, Fabio Estevam <festevam@gmail.com> wrote:
> Hi Adrian, 
> 
> On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> This adds support for the Synopsis DesignWare MIPI DSI v1.01 
>> host controller which is embedded in i.MX 6 SoCs. 
>> 
>> Based on following patches, but updated/extended to work with 
>> existing support found in the kernel: 
>> 
>> - drm: imx: Support Synopsys DesignWare MIPI DSI host 
>> controller 
>>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com> 
>> 
>> - ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller 
>>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com> 
> 
> This one looks like a devicetree patch, but this patch does not 
> touch devicetree. 
> 
>> +       ret = clk_prepare_enable(dsi->pllref_clk); +       if 
>> (ret) { +               dev_err(dev, "%s: Failed to enable 
>> pllref_clk\n", __func__); +               return ret; +       } 
>> + +       dsi->mux_sel = 
>> syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr"); + 
>> if (IS_ERR(dsi->mux_sel)) { +               ret = 
>> PTR_ERR(dsi->mux_sel); +               dev_err(dev, "%s: Failed 
>> to get GPR regmap: %d\n", +                       __func__, 
>> ret); +               return ret; 
> 
> You should disable the dsi->pllref_clk clock prior to returning 
> the error. 
> 
>> +       dsi->mipi_dsi = dw_mipi_dsi_probe(pdev, pdata); + 
>> if (IS_ERR(dsi->mipi_dsi)) { +               ret = 
>> PTR_ERR(dsi->mipi_dsi); +               dev_dbg(dev, "%s: 
>> Unable to probe DW DSI host device: %d\n", + 
>> __func__, ret); +               return -ENODEV; 
> 
> Same here. You should disable the clock. Shouldn't you return 
> 'ret' here instead of -ENODEV? 
> 
>> +module_platform_driver(imx_mipi_dsi_driver); + 
>> +MODULE_DESCRIPTION("i.MX6 MIPI DSI host controller driver"); 
>> +MODULE_AUTHOR("Liu Ying <Ying.Liu@freescale.com>"); 
> 
> The freescale.com domain is no longer functional. 
> 
> Ying Liu's NXP address is victor.liu@nxp.com. You could probably 
> add your entry as well. 

Hi Fabio,

All the issues you pointed out are valid and will be addressed in 
v6 (including the device tree ones).

Thank you, much appreciated,
Adrian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
