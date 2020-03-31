Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDFF199A3E
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Mar 2020 17:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btSKa2glQEeYvQT0PPwQvslgFR63RLcxQwes/ri78F4=; b=dosqy6/bmrcoho
	PlS1+E/gpDUmCcQt6E7dLCabWVYE4GXuVMVIJSRj8F9P8+BY8BjItLJPcEZj7ZsjSCYcp33lMydP4
	SW/hRT557MCP58CfA0e5yyh78tBQx9I9+nJ6QnUadtGDxy3N9/c9nXPy/UU6vY4/lnXpF7F4za6z+
	GTTCtQlJB71WM/94nu+gUMeMBoLpaHBoCjlWuvxSG6zKqP7GpU7GjdOJVHSEnNRoYbiV0keN8kJOp
	qOjcWL2iRfzPJky7dLzDbf5iD7VKV8IFWaA4/wXRlxh1tbM6dgfkG8ub+Ymz7HEssOj03KwYlaLBR
	6nbkdoAROECFSRLN3B5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ8y-0007Rg-B5; Tue, 31 Mar 2020 15:49:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ8j-0007ED-Hh; Tue, 31 Mar 2020 15:49:23 +0000
Received: from coco.lan (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BAA820714;
 Tue, 31 Mar 2020 15:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585669761;
 bh=cKeBnZ340s/3Wc8cYt7l64sbcQ/n5gd0b1gXKRjgmNE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=izv08sg0h7mu5Q67SxYzpInzivHyMXQgCJmjriTyA5M+yN9kIKLtMMz5m0pwqjMyP
 Co3XN1kwF5Hm+QRdHZMabF2mQOOXk+jKicqGsxvZMYUwP78rv5FOvL04PqWbuV9FpS
 J7bcmM/s3z5tL9db5p6M0e2eJ7yANt3L7add1dGg=
Date: Tue, 31 Mar 2020 17:49:14 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: SPDX headers - Was: Re: [PATCH v4 17/33] media: add SPDX headers on
 Kconfig and Makefile files
Message-ID: <20200331174914.2789865e@coco.lan>
In-Reply-To: <20200331120608.GB4767@pendragon.ideasonboard.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084921_624923_95CE5392 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Em Tue, 31 Mar 2020 15:06:08 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> I've however been thinking about licenses for
> build system files recently, and I'll hijack this thread a bit to ask a
> question :-)

Ok, I'll change the subject, as the answers won't be related to the
Kernel :-)

> For a project like the Linux kernel, and especially for subsystems that
> are covered by a single license, the choice is easy, we can apply the
> same license to the build files. However, for a project that contains
> components covered by different licenses (such as, for instance, an LGPL
> library, a GPL application and a BSD plugin), how should the license
> covering the build system files be selected ? I searched a bit for
> guidance on this topic, and couldn't find much.

Then everything becomes a way more complex :-)

I guess nobody has a clear answer for that. Also, IANAL.

What I can tell is what it would makes sense for me.

The big impact of a complex licenses model would be for the ones
packaging it on some distro, and for the users of such distros.

The distros need to know if they have the rights to redistribute,
and need to notify their usages about each package's license.

Let's assume a project "foo-utils" that has such complexity.

Assuming a project that started on a green field (like libcamera),
and such project doesn't use stuff from external libraries, what
one could do would be to design it in a way that different licenses
would be packaged differently. For instance:

	foo-libs	# everything here is under LGPL
	foo-bsd-plugin	# everything here is under BSD
	foo-utils	# everything here is under GPLv3

Then, on each of them, a COPYING.foo file (or whatever other way
distros would use to identify the per-package license) would contain
the license with applied to it.

Btw, if you want to take a look on a real-case scenario, see, for
example:

	https://build.opensuse.org/package/view_file/devel:libraries:c_c++/v4l-utils/v4l-utils.spec?rev=a250bff0f849e8c2fa7e476a1f2849a8

	%package -n libv4l-devel
	License:        LGPLv2+
	
	...

	%package -n     qv4l2
	License:        GPLv2+

Btw, GStreamer actually follows a similar approach, but they even split
those into different git trees (core, good, bad and ugly plugins).

Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
