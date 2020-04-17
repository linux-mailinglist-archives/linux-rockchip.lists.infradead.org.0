Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B99C1AD776
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Apr 2020 09:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjl36ko1mtVJ4jgUtmbenw/hQp8PyzYbNokRKFpIct4=; b=o/58zz/HUmG18f
	tKC4bw8gQ5K4hZU5GIdFdHMmBWz2+/OMxulu/fcICK8OYQbGuIl0pu/sILigoOA1eNYz67V8rqFwQ
	JeEjfyJ43WRZM5en5m9HFkv7LsL/+0R3KYh65ZxNrOC0528rU9X9sdUPkzAiRUJe00/SzBETu2d2E
	Fs5CjFCjnusdEVNVJ2jtxaZDOgocxIGVv+JMMsH6CMAlx8U98F1WA0n8rJA93ousYsNA5+B84i5MZ
	4LfEmgVBZpUoY2cOjHBF7DF4La1iZeSrZ54HYN85q8tTy5ZVmp4Z9gYY3wS/OVauotVOUR5vD/4Ma
	2T3UYEsqXSzyHZEJllKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPLUm-000324-3S; Fri, 17 Apr 2020 07:33:04 +0000
Received: from smtprelay0083.hostedemail.com ([216.40.44.83]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPLUj-00031e-IT
 for linux-rockchip@lists.infradead.org; Fri, 17 Apr 2020 07:33:02 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 2884B180284E9;
 Fri, 17 Apr 2020 07:32:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2194:2198:2199:2200:2393:2559:2562:2731:2828:2895:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:4250:4321:5007:6742:10004:10400:10848:11232:11658:11914:12043:12048:12297:12555:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: food81_710b3da05d519
X-Filterd-Recvd-Size: 2062
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Fri, 17 Apr 2020 07:32:56 +0000 (UTC)
Message-ID: <df23fe6083baad4781a2b79bcbd7d3db055eecd3.camel@perches.com>
Subject: Re: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
From: Joe Perches <joe@perches.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Helen Koike
 <helen.koike@collabora.com>, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Fri, 17 Apr 2020 00:30:44 -0700
In-Reply-To: <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-8-helen.koike@collabora.com>
 <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_003301_668908_4A534C7F 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.83 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.83 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 jbx6244@gmail.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 2020-04-17 at 09:18 +0200, Hans Verkuil wrote:
> On 03/04/2020 18:15, Helen Koike wrote:
> > The Rockchip ISP bindings was moved out of staging.
> > Update MAINTAINERS file with the new path.
> 
> Shouldn't there be a reference to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> as well in MAINTAINERS?

And please keep the file references F: fields in
alphabetic order.

> > diff --git a/MAINTAINERS b/MAINTAINERS
[]
> > @@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike@collabora.com>
> >  L:	linux-media@vger.kernel.org
> >  S:	Maintained
> >  F:	drivers/staging/media/rkisp1/
> > +F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >  
> >  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> >  M:	Jacob Chen <jacob-chen@iotwrt.com>
> > 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
