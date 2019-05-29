Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917A32E060
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 16:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKkP708WX+2ICMQkoz2zGghDabyNohbyvTwk6SKSuLA=; b=DeVkdbt4tNO4v+
	WREqml5i9rV9OlaY5/NYcDnxwBvV3OJT8YzEJCSiC/PwnwwYBEeG5iac3/fpvTfDuhStS8JNzGO7w
	0ltqts7rvXVZglWu67loLJppyq18sYODJHx/VCmUDzNgq3OIz5b0c786NaE1i98RXYPxCdH4zJCQo
	0CHxSHU5ml/JyvX/yRvM8kPRbjrme9ClW1zMs+RS7j0vqdeS6D5b3rouwmq85LevgGlUCyT5+ppdx
	pFtRrzDYgt45HWkJ4iI8ffjsCvF243RhwX9vtmcteXXdal4/pgLEG2BA8uJup7vB5M5tvOPLp9YH7
	drNxKIXY5l7KeS+CGpVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW03W-0005HZ-Ab; Wed, 29 May 2019 14:59:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW03S-0005H7-Mw
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 14:59:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 88BBD2609D6
Message-ID: <34015a49654464b072efd401d2b55d26379bc85c.camel@collabora.com>
Subject: Re: [PATCH v6 16/16] rockchip/vpu: Add support for MPEG-2 decoding
 on RK3328
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, 
 "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>
Date: Wed, 29 May 2019 11:59:41 -0300
In-Reply-To: <VI1PR03MB42066B8C9F364ACF7CFFF241AC1F0@VI1PR03MB4206.eurprd03.prod.outlook.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
 <20190528170232.2091-17-ezequiel@collabora.com>
 <2ef056a2-e9dc-52b1-855b-2bef759af9b6@xs4all.nl>
 <VI1PR03MB42066B8C9F364ACF7CFFF241AC1F0@VI1PR03MB4206.eurprd03.prod.outlook.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_075951_004021_0DEB6F09 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tfiga@chromium.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "kernel@collabora.com" <kernel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 2019-05-29 at 08:50 +0000, Jonas Karlman wrote:
> On 2019-05-29 10:11, Hans Verkuil wrote:
> > On 5/28/19 7:02 PM, Ezequiel Garcia wrote:
> > > From: Jonas Karlman <jonas@kwiboo.se>
> > > 
> > > Add necessary bits to support MPEG2 decoding on RK3328.
> > > 
> > > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > --
> > > Changes from v5:
> > > * New patch.
> > > 
> > >  drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c   | 12 ++++++++++++
> > >  .../staging/media/rockchip/vpu/rockchip_vpu_drv.c    |  1 +
> > >  drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h |  1 +
> > >  3 files changed, 14 insertions(+)
> > > 
> > > diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> > > index 2b3689968ef4..341f8d69c33d 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> > > +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> > > @@ -175,3 +175,15 @@ const struct rockchip_vpu_variant rk3399_vpu_variant = {
> > >  	.clk_names = {"aclk", "hclk"},
> > >  	.num_clocks = 2
> > >  };
> > > +
> > > +const struct rockchip_vpu_variant rk3328_vpu_variant = {
> > > +	.dec_offset = 0x400,
> > > +	.dec_fmts = rk3399_vpu_dec_fmts,
> > > +	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
> > > +	.codec = RK_VPU_MPEG2_DECODER,
> > > +	.codec_ops = rk3399_vpu_codec_ops,
> > > +	.vdpu_irq = rk3399_vdpu_irq,
> > > +	.init = rk3399_vpu_hw_init,
> > > +	.clk_names = {"aclk", "hclk"},
> > > +	.num_clocks = 2
> > > +};
> > > diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > index b94ff97451db..2e22009b6583 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> > > @@ -419,6 +419,7 @@ static const struct v4l2_file_operations rockchip_vpu_fops = {
> > >  
> > >  static const struct of_device_id of_rockchip_vpu_match[] = {
> > >  	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
> > > +	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
> > This new compatible string should be documented in
> > Documentation/devicetree/bindings/media/rockchip-vpu.txt as well.
> > 
> > I'll take patches 1-15 and drop this one. This patch can be merged once
> > the bindings file is updated as well.
> 
> Looks like the bindings patch did not get picked for v6 :-)
> 

Oh, that's my bad. I picked the support and left the binding out.

> I am a bit unclear on how to handle patch submission that covers multiple subtrees.
> Should I send a single series including three patches: bindings update, this patch and device tree update?
> Or is a series with only bindings update and this patch preferred?
> 

Thanks both for sorting this one out,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
