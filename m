Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3DF1B4705
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 Apr 2020 16:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiIW+uoZUWa4aWp7+A5JGnMM8NQyvB2nVvumce0krnc=; b=crQ+IVXpI9LMfw
	q59uSGxhmejjUSh7yHp6UDdJ4l+3bRtWmKm3rgIDkKEPCvkFxC0myLT2/n8RejCOzzZdQZFsC3Lk4
	C5/z3uHpQ68+Q4jIi0m3ctiaaGsdDaKEafKF/YuN0cc923R+/vsnMOXhspZbh4YqRhl7cScV9wMv0
	rLrhtcdZ5LyDf1sLnmBD/J4Bhc4aFeKwe8PdQIpX+m8equNTGDLZ8kn1R7aRELG0o+OhNhgbGxWMd
	uQDGs3p1WVLpO6Nv0n8VolE8J/r3W3Nc3jgK3GApOM9bC1VFE+NVfHJNcnwOZXZ17J/s77d0Jfl51
	PSz3nDhmRSVEoEXWE2Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRGDt-00039X-Kt; Wed, 22 Apr 2020 14:19:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRGDr-00037U-2t
 for linux-rockchip@lists.infradead.org; Wed, 22 Apr 2020 14:19:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7BCB82A1EA1
Message-ID: <c61815a2872c5092c72ccbf9656a2bd6501810a4.camel@collabora.com>
Subject: Re: [PATCH] media: MAINTAINERS: Fix Hantro, Rga and Rkvdec entries
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Johan Jonker
 <jbx6244@gmail.com>
Date: Wed, 22 Apr 2020 11:19:17 -0300
In-Reply-To: <20200422160631.74390a06@coco.lan>
References: <20200422111403.19114-1-ezequiel@collabora.com>
 <73d3d8c1-1952-aeb1-5bc0-829503cf29bd@gmail.com>
 <20200422160631.74390a06@coco.lan>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_071931_255148_C8A14DEB 
X-CRM114-Status: GOOD (  15.52  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 2020-04-22 at 16:06 +0200, Mauro Carvalho Chehab wrote:
> Em Wed, 22 Apr 2020 14:01:41 +0200
> Johan Jonker <jbx6244@gmail.com> escreveu:
> 
> > Hi Ezequiel,
> > 
> > On 4/22/20 1:14 PM, Ezequiel Garcia wrote:
> > > It seems recent merges introduced a couple issues
> > > here, so let's fix them all. Also, reorder Rockchip
> > > video decoder as per parse-maintainers.pl script
> > > and add linux-rockchip mailing list.
> > > 
> > > Reported-by: Johan Jonker <jbx6244@gmail.com>
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > ---
> > >  MAINTAINERS | 20 ++++++++++----------
> > >  1 file changed, 10 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 09e0137df61d..4d5b06c6fe0f 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -7460,7 +7460,7 @@ L:	linux-media@vger.kernel.org
> > >  L:	linux-rockchip@lists.infradead.org
> > >  S:	Maintained
> > >  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > -F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
> > > +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > >  F:	drivers/staging/media/hantro/
> > >  
> > >  HARD DRIVE ACTIVE PROTECTION SYSTEM (HDAPS) DRIVER
> > > @@ -14465,13 +14465,6 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
> > >  F:	drivers/hid/hid-roccat*
> > >  F:	include/linux/hid-roccat*
> > >  
> > > -ROCKCHIP VIDEO DECODER DRIVER
> > > -M:	Ezequiel Garcia <ezequiel@collabora.com>
> > > -L:	linux-media@vger.kernel.org
> > > -S:	Maintained
> > > -F:	drivers/staging/media/rkvdec/
> > > -F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > > -
> > >  ROCKCHIP ISP V1 DRIVER
> > >  M:	Helen Koike <helen.koike@collabora.com>
> > >  L:	linux-media@vger.kernel.org  
> > 
> > L:	linux-rockchip@lists.infradead.org
> > 
> > > @@ -14483,12 +14476,19 @@ ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> > >  M:	Jacob Chen <jacob-chen@iotwrt.com>
> > >  M:	Ezequiel Garcia <ezequiel@collabora.com>
> > >  L:	linux-media@vger.kernel.org
> > > +L:	linux-rockchip@lists.infradead.org
> > >  S:	Maintained
> > > -F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > >  F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > > -F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > >  F:	drivers/media/platform/rockchip/rga/
> > >  
> > > +ROCKCHIP VIDEO DECODER DRIVER
> > > +M:	Ezequiel Garcia <ezequiel@collabora.com>
> > > +L:	linux-media@vger.kernel.org
> > > +L:	linux-rockchip@lists.infradead.org
> > > +S:	Maintained  
> > > +F:	drivers/staging/media/rkvdec/
> > > +F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml  
> > 
> > When I look at the other entries 'drivers/' is sort below 'Documentation/'.
> > 
> > ./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
> > --order
> 
> Good point. It would be cool if checkpatch.pl could call it in order
> to verify if MAKEFILE changes are at the right order.
> 
> As I noticed other fields that are out of the order on media,
> due to some changes that didn't arrive upstream yet, I'll fix
> them all on a single patch.
> 

Thanks for taking care of this.

Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
