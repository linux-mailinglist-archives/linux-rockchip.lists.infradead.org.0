Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ACFEB7D0
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 20:11:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8ObEk7nRLHaUkDrX3xwKPleWobPXbJz378uBzSUkBOs=; b=PBAcFVm3UZnLyZzJTPCAf/Z0C
	Ia7O+8pTWfvnsVIQ9WWwNGcGEO0gzv8KChwGwxqhJ5saKuneFa9xKk5Au6T/J6rp6p4oN47wzFJmw
	b7trPo/rk6KaHkjcMiE8XZwr1on+4CshWFoi0rEGUinetoKEK1PIrghmLe0bczbem2obSM3XXsXp8
	dw+Byvs8FGSrQVFkNMDR71rQUM2AEFEGqgMRU/hsNyrZRE+fQG5N2hb7IxZdD16G9ggt8s8Ad/vD8
	DWxzGNCg7Ew8DdDHHyH7iHAoV754Kdd1GS+XH096tBOi9iEE+M107PluOMIwB1YYzBu4uv2MQJowf
	KqQ821Fag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQFqU-0002x2-KK; Thu, 31 Oct 2019 19:10:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQFq7-0002ah-I2; Thu, 31 Oct 2019 19:10:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 5E60A290B9B
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Emil Velikov <emil.l.velikov@gmail.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Subject: Re: [PATCH 0/4] Genericize DW MIPI DSI bridge and add i.MX 6 driver
In-Reply-To: <CACvgo50NmofJrCvADOTxJqJqKEWDsy8qD-1B6R356vFMcmdbWA@mail.gmail.com>
References: <20191031142633.12460-1-adrian.ratiu@collabora.com>
 <CACvgo50NmofJrCvADOTxJqJqKEWDsy8qD-1B6R356vFMcmdbWA@mail.gmail.com>
Date: Thu, 31 Oct 2019 21:10:48 +0200
Message-ID: <87y2x091dz.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_121035_758468_22535B40 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 31 Oct 2019, Emil Velikov <emil.l.velikov@gmail.com> 
wrote:
> Hi Adrian, 

Hi Emil!

> 
> On Thu, 31 Oct 2019 at 14:26, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Having a generic Synopsis DesignWare MIPI-DSI host controller 
>> bridge driver is a very good idea, however the current 
>> implementation has hardcoded quite a lot of the register 
>> layouts used by the two supported SoC vendors, STM and 
>> Rockchip, which use IP cores v1.30 and v1.31. 
>> 
>> This makes it hard to support other SoC vendors like the 
>> FSL/NXP i.MX 6 which use older v1.01 cores or future versions 
>> because, based on history, layout changes should also be 
>> expected in new DSI versions / SoCs. 
>> 
>> This patch series converts the bridge and platform drivers to 
>> access registers via generic regmap APIs and allows each 
>> platform driver to configure its register layout via struct 
>> reg_fields, then adds support for the host controller found on 
>> i.MX 6. 
>> 
> Have you considered keeping the difference internal to the 
> dw-mipi-dsi driver?  Say having the iMX6 module "request" the 
> v1.01 regmap from the bridge driver, while rockchip/others doing 
> the equivalent.

No, I haven't. It sounds like a good idea though and I think it's 
doable. Thank you!
 
> 
>>  .../bindings/display/imx/mipi-dsi.txt         |  56 ++ 
>>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 518 
>>  +++++++++--------- drivers/gpu/drm/imx/Kconfig 
>>  |   7 + drivers/gpu/drm/imx/Makefile                  |   1 + 
>>  drivers/gpu/drm/imx/dw_mipi_dsi-imx.c         | 502 
>>  +++++++++++++++++ .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c 
>>  | 154 +++++- drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 
>>  160 +++++- include/drm/bridge/dw_mipi_dsi.h              |  60 
>>  +- 8 files changed, 1185 insertions(+), 273 deletions(-) 
>>  create mode 100644 
>>  Documentation/devicetree/bindings/display/imx/mipi-dsi.txt 
>>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx.c 
>> 
> 
> This should make the delta a lot smaller, avoiding the 
> unnecessary copy of register fields and regmap.  Plus plugging 
> future users will be dead trivial.

Agreed. I'll do this in v2 unless someone objects or proposes a 
better alternative.

I'll let this series sit a little more on review so others have a 
chance to see and review; will address all feedback in v2.

>
> -Emil
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
