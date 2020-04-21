Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180531B1D20
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 05:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwZ0kPvxTbHALJjy6mXHFuwRm/kMFvJrIxfo1cRRUqU=; b=L4Dopjywu5fgwh
	Sf6v9qkGTcSQD/IuJvDuLTcbJc3/QhrAhW7T+9FCKJ1OPPoKWdLXvCUJWmX/GlWuL15smLdu6rTFK
	DCPT+7EG+bw2GERVRKGghua9B8NUT9hRpNdUrgWwhJKjRweokHD00WuJHbp1cTyUmzIPG792qvkVu
	PA5meMgyHhihFtvFOukZgvIywmfhvgfXnomR8F2Za2zcNVzd8giK4Krp2thwh1GiwoYj65Lnfkoou
	/Sv26n0ikPgM4vs82Yb9pvi97oYWsJulFulvZF2W/NeBS46dBK0/fjIDeTTxrt/KFXKtXnKsnJWEu
	eGSGAN1rItGsyp/30loA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQk0c-0006Ld-9M; Tue, 21 Apr 2020 03:55:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQk0Z-0006Ke-F0
 for linux-rockchip@lists.infradead.org; Tue, 21 Apr 2020 03:55:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B8D3A2A0EF3
Message-ID: <b7af1fd261a54527be2ea2ab2656756f15452732.camel@collabora.com>
Subject: Re: [PATCH 2/3] phy-rockchip-dphy-rx0: Drop unneeded CONFIG_OF
 dependency
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Tue, 21 Apr 2020 00:55:21 -0300
In-Reply-To: <7ced1203-cdea-ad26-f46b-8873bfb85043@collabora.com>
References: <20200401213721.24173-1-ezequiel@collabora.com>
 <20200401213721.24173-3-ezequiel@collabora.com>
 <7ced1203-cdea-ad26-f46b-8873bfb85043@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_205539_634134_1AE70478 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 2020-04-02 at 10:59 -0300, Helen Koike wrote:
> 
> On 4/1/20 6:37 PM, Ezequiel Garcia wrote:
> > The driver is perfectly capable of being built without CONFIG_OF.
> > Remove this dependency, which is useful for compile-only tests.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> > ---
> >  drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> > index bd0147624de1..fb74df829371 100644
> > --- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> > +++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> > @@ -2,7 +2,7 @@
> >  
> >  config PHY_ROCKCHIP_DPHY_RX0
> >  	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
> > -	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
> > +	depends on ARCH_ROCKCHIP || COMPILE_TEST

After discussing other similar patches, I'm starting to
think this was a bad idea.

Instead, we want to do have (ARCH_ROCKCHIP && OF) || COMPILE_TEST
as the other Rockchip PHYs.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
