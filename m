Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496DF10359E
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 08:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1N5HBg03gyg1w30gkRKWSa7FzGTqC6oGHrBg7gxMUy4=; b=uMwKrsw2Q73Bq80XLiCiDORWx
	4gWXn0hWLQzk80EGV8lc1GG9Jka1zS9LSYFEexhwlTm1n2VpEnOobLGl9jaCF6h1XaTDO8IjZIsC5
	+ipbt0ZcJvK0hbXaxBDUeIzYwbRZmGLFcPoZbEUv1Ba5KdeSs/cc2T+scCCEQZsDjGF1Vot72tUWZ
	ZJww3i/5P/mILHHsy4Fe7b0AFJF620o+OQyPVMwRcQfyoyvWTMPwunJlSrqzkt3MN4XzQ0VC+J3XM
	S1t5BhmaqcMfGTVqH2xNSTXqD15v2w3VQ3FKPVxUsIWCRVz6ZZtyZEX8iK93bZGdazZiaT1Nuv6Eg
	Xf09Oepsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXKm8-0006if-Lk; Wed, 20 Nov 2019 07:51:44 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXKly-0006a4-NU; Wed, 20 Nov 2019 07:51:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 4C0C72813B8
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Fabio Estevam <festevam@gmail.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v3 3/4] drm: imx: Add i.MX 6 MIPI DSI host driver
In-Reply-To: <CAOMZO5C5gpW6KF9d-79wd=-7ZGAbXQLAXw3kLi+_5DBW_DYrTw@mail.gmail.com>
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
 <20191118152518.3374263-4-adrian.ratiu@collabora.com>
 <CAOMZO5C5gpW6KF9d-79wd=-7ZGAbXQLAXw3kLi+_5DBW_DYrTw@mail.gmail.com>
Date: Wed, 20 Nov 2019 09:51:56 +0200
Message-ID: <87o8x7dlyb.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_235134_895937_81222F7B 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE
 IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019, Fabio Estevam <festevam@gmail.com> wrote:
> Hi Adrian, 

Hi Fabio,

> 
> On Mon, Nov 18, 2019 at 12:25 PM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
> 
> Some nitpicks: 
> 
>> + +config DRM_IMX_MIPI_DSI +       tristate "Freescale i.MX DRM 
>> MIPI DSI" 
> 
> This text seems too generic as there are i.MX SoCs that use 
> different MIPI DSI IP. 
> 
> Maybe "Freescale i.MX6 DRM MIPI DSI" instead? 

Yes, this is a good idea, will update in a newer version to make 
it more specific. I'll let this version sit a little more on 
review so others also have time to review.

Thank you!

> 
>> +module_platform_driver(imx_mipi_dsi_driver); + 
>> +MODULE_DESCRIPTION("i.MX MIPI DSI host controller driver"); 
> 
> i.MX6 MIPI DSI, please.
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
