Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB664A277
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 15:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0z73jig7WZC/Svvhe0n9WuJd/etEMH8FcEPXRNxk7I=; b=VWbWzNHoRhhQeX
	uvPCQ3CCVAo3cIVgk/DQCg52eyqnOHB2JkJlkNUETk4z8AGI0T5dMynn3D/3KVpScwEp7CLsV1YlZ
	uNO8YInNfZJ4WD+OOQgx+NFhs2QAS77L2RsEIKXiYAy2bN+uR7vYVGMyVKcba8gm5nm7Vv2FRH4X5
	dgXAzunqOfXQviZFAflBIob0dyNh4G4YYL/PZRf3XaNnljfnEllEjBlG9cGqWSEBa/Cta/GGFyxZs
	yRYNMNHGgRM3Uo6mRlt1RUBLPus1U6DY2/Gd4xMvG61q9GCxB5NXkw61wjzCjSO8CP0tZMCGA7cPu
	HzLiX2bqrXNj+wXJIpHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEJb-0000jv-Vk; Tue, 18 Jun 2019 13:38:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEJY-0000ja-DG
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 13:38:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8A3DD263ABB
Message-ID: <1560aa16c5655f7eeab7c8e900b8e0be391e7976.camel@collabora.com>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Doug Anderson <dianders@chromium.org>
Date: Tue, 18 Jun 2019 10:38:10 -0300
In-Reply-To: <CAD=FV=U84U0TaC=VUXeggCDJJNkPOJYmOL0JNT1Lf7Gecv-5Aw@mail.gmail.com>
References: <20190613192244.5447-1-ezequiel@collabora.com>
 <CAD=FV=U84U0TaC=VUXeggCDJJNkPOJYmOL0JNT1Lf7Gecv-5Aw@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_063820_721133_7F45B034 
X-CRM114-Status: GOOD (  18.58  )
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
Cc: JacopoMondi <jacopo@jmondi.org>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 13:05 -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jun 13, 2019 at 12:23 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > @@ -1744,6 +1793,41 @@ int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
> >  }
> >  EXPORT_SYMBOL(rockchip_drm_wait_vact_end);
> > 
> > +static int vop_gamma_lut_request(struct device *dev,
> > +                                struct resource *res, struct vop *vop)
> > +{
> > +       resource_size_t offset = vop->data->gamma_lut_addr_off;
> > +       resource_size_t size = VOP_GAMMA_LUT_SIZE * 4;
> > +
> > +       /*
> > +        * Some SoCs (e.g. RK3288) have the gamma LUT address after
> > +        * the MMU registers, which means we can't request and ioremap
> > +        * the entire register set. Other (e.g. RK3399) have gamma LUT
> > +        * address before MMU.
> > +        *
> > +        * Therefore, we need to request and ioremap those that haven't
> > +        * been already.
> > +        */
> > +       if (vop->len >= (offset + size)) {
> > +               vop->lut_regs = vop->regs + offset;
> > +               return 0;
> > +       }
> > +
> > +       if (!devm_request_mem_region(dev, res->start + offset,
> > +                                    size, dev_name(dev))) {
> > +               dev_warn(dev, "can't request gamma lut region\n");
> > +               return -EBUSY;
> > +       }
> > +
> > +       vop->lut_regs = devm_ioremap(dev, res->start + offset, size);
> > +       if (!vop->lut_regs) {
> > +               dev_err(dev, "can't ioremap gamma lut address\n");
> > +               devm_release_mem_region(dev, res->start + offset, size);
> > +               return -ENOMEM;
> > +       }
> 
> I'm curious here.  I was always under the impression that you were
> supposed to specify all of your memory regions in the device tree.
> ...but here the device tree on rk3288 says:
> 
> vopb: vop@ff930000 {
>     compatible = "rockchip,rk3288-vop";
>     reg = <0x0 0xff930000 0x0 0x19c>;
>     ...
> };
> 
> ...and we're now mapping 4096 bytes starting at 0xff931000.  Is that
> really legit?  Wouldn't it be better to put this extra memory range in
> the dts?
> 
> Hrm, but then I guess you need to figure out what to do about older
> device trees.  Do you disable the gamma LUT feature?  ...or do you do
> exactly what the code here is doing and just map it anyway?  I guess
> you could just keep the code here (and it'll work fine), but maybe in
> parallel we should add it to the .dts file and bindings?
> 

Maybe we can see how it would look adding the LUT as a separate
(optional) resource in the devicetree, and dropping support for RK3399,
which doesn't seem to work.

I'm taking a look at Jacopo's question on atomic_flush vs.
atomic_commit_tail, and will prepare a v2.

> ---
> 
> I will say that, though I don't know much (anything?) about gamma
> LUTs, I ran the Chrome OS "gamma_test" program and saw a pretty RGB
> gradient on the both the internal screen and HDMI monitor on my
> rk3288-veyron-jerry.  Thus:
> 
> Tested-by: Douglas Anderson <dianders@chromium.org>

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
