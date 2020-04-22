Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ECD1B46CD
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 Apr 2020 16:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ANlLxk3rTLTYU0rYAkGiNErmlz4S90SULTTpJ5iGyA=; b=doa5qtxLMuwF8A
	WZqhtjkKwYcpQ++2/6jbqj1iOLqDnoAnXHwKcolIW7qtFRC7W13HJtPTpec1psW8aY8FWAd+ncHyu
	LhjU5/kAx0oWccWRhsasPLkzyxwS31SUtaPV+nIs1JPt9q8ftR7KEYm/WaAZ1ege8hTIq3svVW6Ao
	K/Ht08gw3Y3F4FVEKcxDXgCbBc7KprvObLv2ad/I+5sqr1TWnhNTFHUH6V57xqwiIiiw7zKxUJDyj
	LcFIL6oOn/YyqBMy0RZF/yGUQKRgTsjFgXfWKsDVoNQ8QYMGOEhvDlmfL5q4Le5jjubmYOh2SWqlm
	5MpFtNQokHr/JtkHiGuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRG1Q-0003fe-8J; Wed, 22 Apr 2020 14:06:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRG1N-0003eg-2C
 for linux-rockchip@lists.infradead.org; Wed, 22 Apr 2020 14:06:38 +0000
Received: from coco.lan (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 973282077D;
 Wed, 22 Apr 2020 14:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587564396;
 bh=hnfD5flNiiNWgsc8kUqJcYA1AVMFiXNsm/3nr4gUEw4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=biwsd5Gs3I+ESWnZk53/8oTTY1L1P/QItvUp1xpsOwAKXiEGSTNy38zBXWw25oG70
 FDJsf5Xj0mqj7pQ/lhmA7cXZ4Pv+vpPsLyBm9Xt+SX9zvaYKtCHAck36aeIslb5GRc
 t3x1LwvFhY2qE9I+zjUjTCTH8C5TQ7QSV3LM0JOM=
Date: Wed, 22 Apr 2020 16:06:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] media: MAINTAINERS: Fix Hantro, Rga and Rkvdec entries
Message-ID: <20200422160631.74390a06@coco.lan>
In-Reply-To: <73d3d8c1-1952-aeb1-5bc0-829503cf29bd@gmail.com>
References: <20200422111403.19114-1-ezequiel@collabora.com>
 <73d3d8c1-1952-aeb1-5bc0-829503cf29bd@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_070637_145546_933F3655 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Hans Verkuil <hverkuil@xs4all.nl>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Em Wed, 22 Apr 2020 14:01:41 +0200
Johan Jonker <jbx6244@gmail.com> escreveu:

> Hi Ezequiel,
> 
> On 4/22/20 1:14 PM, Ezequiel Garcia wrote:
> > It seems recent merges introduced a couple issues
> > here, so let's fix them all. Also, reorder Rockchip
> > video decoder as per parse-maintainers.pl script
> > and add linux-rockchip mailing list.
> > 
> > Reported-by: Johan Jonker <jbx6244@gmail.com>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  MAINTAINERS | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 09e0137df61d..4d5b06c6fe0f 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -7460,7 +7460,7 @@ L:	linux-media@vger.kernel.org
> >  L:	linux-rockchip@lists.infradead.org
> >  S:	Maintained
> >  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > -F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
> > +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> >  F:	drivers/staging/media/hantro/
> >  
> >  HARD DRIVE ACTIVE PROTECTION SYSTEM (HDAPS) DRIVER
> > @@ -14465,13 +14465,6 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
> >  F:	drivers/hid/hid-roccat*
> >  F:	include/linux/hid-roccat*
> >  
> > -ROCKCHIP VIDEO DECODER DRIVER
> > -M:	Ezequiel Garcia <ezequiel@collabora.com>
> > -L:	linux-media@vger.kernel.org
> > -S:	Maintained
> > -F:	drivers/staging/media/rkvdec/
> > -F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > -
> >  ROCKCHIP ISP V1 DRIVER
> >  M:	Helen Koike <helen.koike@collabora.com>
> >  L:	linux-media@vger.kernel.org  
> 
> L:	linux-rockchip@lists.infradead.org
> 
> > @@ -14483,12 +14476,19 @@ ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> >  M:	Jacob Chen <jacob-chen@iotwrt.com>
> >  M:	Ezequiel Garcia <ezequiel@collabora.com>
> >  L:	linux-media@vger.kernel.org
> > +L:	linux-rockchip@lists.infradead.org
> >  S:	Maintained
> > -F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> >  F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > -F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> >  F:	drivers/media/platform/rockchip/rga/
> >  
> > +ROCKCHIP VIDEO DECODER DRIVER
> > +M:	Ezequiel Garcia <ezequiel@collabora.com>
> > +L:	linux-media@vger.kernel.org
> > +L:	linux-rockchip@lists.infradead.org
> > +S:	Maintained  
> 
> > +F:	drivers/staging/media/rkvdec/
> > +F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml  
> 
> When I look at the other entries 'drivers/' is sort below 'Documentation/'.
> 
> ./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
> --order

Good point. It would be cool if checkpatch.pl could call it in order
to verify if MAKEFILE changes are at the right order.

As I noticed other fields that are out of the order on media,
due to some changes that didn't arrive upstream yet, I'll fix
them all on a single patch.

Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
