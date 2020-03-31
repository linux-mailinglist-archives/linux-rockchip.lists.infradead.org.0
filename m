Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCC6199B79
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Mar 2020 18:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0/LGYJFXEf3/o4ZoXJcqRXmYRISNOIqoeKfjHvqdUA=; b=eoEYcVlslPmd2z
	ZJGP8VcoZ4EVnQ/mOdhPzEEun6gxeiyrS26O1ghe7ROgfqbLUcjk4QkTD3PWcgZo9cnAMjs6kPdRO
	7NW7Ep+GZN6Q3NU5bwNlJmKjfYig/2njwprHAS69CCm6A3BoakD45PEZZYs6Mrfzs/Kc+1hRq8AyS
	0TQBzPrbYHsSg4Hw8NcIfJzW7uWjPVLsyzKo4p6uOwE3SE11h4R2z49r7wozEh+hzVTNNCekCQq1L
	LjupnpWyxrK761UMwXFnOU7u+FjgX7loumr02ppwqiSJO169PJm7Qdr7id/DkVb+ReJjrkCntHJJ+
	EbHpwmTNB0OowA/Am5NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJku-0000IS-Vo; Tue, 31 Mar 2020 16:28:49 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJjp-0007bO-Pi; Tue, 31 Mar 2020 16:27:44 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4BB1CB18;
 Tue, 31 Mar 2020 14:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1585659142;
 bh=c14UmhR+VSQy+0YEeVT6dAmWibySUvRjSpEVBUh8h9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=loJZXkzVDFgHAy1+WDL2NuorSOCZZvZRHaOj+Mm58ctdxjNh1PExDJMCiwOXVF+DK
 xArIrighC6BlxUPY7e2AkLNSo5+qyFE2iNvy4Vr7Neyf93YOcsVDvEI46jX1oyrmox
 1V7tYK7KnRmvInL3NhydHz3JGNFxOc7xlfeDpI1I=
Date: Tue, 31 Mar 2020 15:52:16 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile
 files
Message-ID: <20200331125216.GE4767@pendragon.ideasonboard.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
 <20200331122209.GA1627483@kroah.com>
 <20200331123914.GC4767@pendragon.ideasonboard.com>
 <20200331124756.GA1634223@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331124756.GA1634223@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_092742_210521_5725E231 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Greg,

On Tue, Mar 31, 2020 at 02:47:56PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Mar 31, 2020 at 03:39:14PM +0300, Laurent Pinchart wrote:
> > On Tue, Mar 31, 2020 at 02:22:09PM +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Mar 31, 2020 at 03:06:08PM +0300, Laurent Pinchart wrote:
> > > > On Tue, Mar 31, 2020 at 01:11:53PM +0200, Mauro Carvalho Chehab wrote:
> > > > > Most of media Kconfig/Makefile files already has SPDX,
> > > > > but there are a few ones still missing. Add it to them.
> > > > 
> > > > I think it's a good idea to state the license of each source file, the
> > > > patch looks fine to me. I've however been thinking about licenses for
> > > > build system files recently, and I'll hijack this thread a bit to ask a
> > > > question :-)
> > > > 
> > > > For a project like the Linux kernel, and especially for subsystems that
> > > > are covered by a single license, the choice is easy, we can apply the
> > > > same license to the build files. However, for a project that contains
> > > > components covered by different licenses (such as, for instance, an LGPL
> > > > library, a GPL application and a BSD plugin), how should the license
> > > > covering the build system files be selected ? I searched a bit for
> > > > guidance on this topic, and couldn't find much.
> > > 
> > > By "default" if there is no license on a file in the kernel tree, it
> > > falls under the GPLv2 license and we should explicity state it, like
> > > this patch does.
> > > 
> > > So this is fine, but if you want to license the build files some other
> > > way, that's good too, but do so when you add them to the tree, not at
> > > some later time when it could cause confusion :)
> > 
> > Thanks for your answer. I was hijacking the thread a little bit, the
> > question wasn't related to the kernel, but in this case to libcamera.
> > We've been wondering how to pick licenses for build files there, and I
> > thought fellow kernel developers may have valuable input on this topic.
> 
> I would make the files the same license as your project overall is to
> make things simpler for everyone involved :)

I would if the project had a single license, but we have GPL, LGPL and
BSD components :-S

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
