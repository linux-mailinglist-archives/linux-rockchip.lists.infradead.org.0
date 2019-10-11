Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A2CD3CC4
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 11:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cir3BzpRnynFBaRv2vtvV6yZJBfox10rSAiBFV2AeXo=; b=V+ZSooDk9eLeZZ
	VqsvMb9f5xU9G+Pto+IrflipdbvOLKvX25jjzyt8J8SuGSfh8ji4BhRNPSYSYWpmq/OaizpPvKomQ
	pD+92NH5z9HZEMqKdR8Ue9UBHSlIv+Ld1HJJm182AmPUsn8TZKCD936HdhiryFA4YDEIiIpKZFHx+
	rWkSLNaecCtXA0FuIxgfMd6OIh+Y4k0xeHTp6bGVXt6/iB+Dxh29mbng7KpFLLtbxLw/2QQCWa1G0
	E7mJffVdPb7IgT4Y0lEcmRojHY7R7tCGO3EX9Fxuga4G9D62sQ2dCRZCZBT9zF+9N1Rewi4aMbK+V
	lgo9KOYnUzVXkMaO3Kow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrbl-0002H9-3q; Fri, 11 Oct 2019 09:53:13 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrbh-0002GS-BZ
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 09:53:10 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C3097290E0A;
 Fri, 11 Oct 2019 10:53:07 +0100 (BST)
Date: Fri, 11 Oct 2019 11:53:04 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [RESEND PATCH v2 0/4] media: rockchip: Add the rkvdec driver
Message-ID: <20191011115304.3b106a2b@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <ea218a89-d844-4c56-595a-7359af3ef031@xs4all.nl>
References: <20191011093342.3471-1-boris.brezillon@collabora.com>
 <ea218a89-d844-4c56-595a-7359af3ef031@xs4all.nl>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_025309_525215_211ED7C1 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 11:43:20 +0200
Hans Verkuil <hverkuil@xs4all.nl> wrote:

> On 10/11/19 11:33 AM, Boris Brezillon wrote:
> > Hello,
> > 
> > Sorry for the noise, I forgot to Cc the DT maintainers/ML on my last
> > attempt.
> > 
> > This is v2 of the rkvdec driver which was initially posted as part of
> > my RFC adding codec helpers.
> > For this version, I decided to get rid of the helper stuff which is
> > likely to take some more time to settle. The patchset now contains a
> > proper DT binding doc.
> > 
> > Note that this implementation is likely to be adjusted based on the
> > outcome of the 'scaling matrix order' [1] and 'dynamic resolution
> > changes' [2] discussions, but I thought it'd be worth posting this
> > version to start getting feeback.  
> 
> I assume this version of the driver does not (yet?) support slicing?

Nope, but the driver does not support SLICE_BASED decoding anyway, so
I'm not sure slicing applies here.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
