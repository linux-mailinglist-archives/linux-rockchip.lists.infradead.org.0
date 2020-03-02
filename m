Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 769D5175D62
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 15:39:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvZrOD25vYxPicjFr+He7bjpeRKrhTkMUExKfk31E1E=; b=hXdd7s8LFFJ1am
	aQ7l2KkhKQOtQN9Ewj5hxPBsN5jmaqP5fbPQQwxYY+BNJqd+A57ZTy6ESWM/WGE0TgGMuM5z+wRXM
	9kFCung97y5loIv6eidjHJmsAHHajdYh+CMcoe+UD6LHKza8kyG9YpgBYs0xWpzIHGuft8wXELNrG
	WP+YTmD7WY4vYdb6QBfQ4ywpEnpNELbz0iEwugIZs9pQX6lKSqz4Bxwspbz14+MeaTzvGuTuLhM+d
	pDnu0MOCTuOv14azVfYDwR0iyzKi1Uo4dAElkIoxSCO/TWmgOlfappcdNuIw6OFlaxLxYQXwvkgTU
	t2ILl7QVeAh9poYiX9NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8mE4-0000W3-EU; Mon, 02 Mar 2020 14:39:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8mE1-0000VY-3h
 for linux-rockchip@lists.infradead.org; Mon, 02 Mar 2020 14:39:18 +0000
Received: from coco.lan (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAD482166E;
 Mon,  2 Mar 2020 14:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583159956;
 bh=S9YX6OjPgbMI3SxRJ44ChncEyJ5JHI0lpyN8E4uSJiU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CDZyD8IsBQz3OtxC4HycZ3hNtuU4udOa6Si9GzEMN1YVu+n0rBPysyWzqP/5kXoG4
 t3L2ShtbPDuTkqZJNpO/XNu5NmPjiZh+EZPlWvOnnJg4PaDuXCcpC9Kxvwl/8znEDG
 F9DqUHwh+TRAnlDNGko/ruh+vXpXLrzV4nP51y8A=
Date: Mon, 2 Mar 2020 15:39:09 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 5/6] media: rkvdec: Add the rkvdec driver
Message-ID: <20200302153909.4e90227d@coco.lan>
In-Reply-To: <20200302153529.4e2429e7@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-6-ezequiel@collabora.com>
 <20200302145746.3e94c1d1@coco.lan>
 <20200302153529.4e2429e7@collabora.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_063917_174415_8AA08B5D 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Em Mon, 2 Mar 2020 15:35:29 +0100
Boris Brezillon <boris.brezillon@collabora.com> escreveu:

> On Mon, 2 Mar 2020 14:57:46 +0100
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:
> 
> > > +	for (j = 0; j < 3; j++) {    
> > 
> > Again a magic number. I guess this came from that big "M_N" table with 4
> > elements, right? Please use a define instead of hardcoding a number
> > here.  
> 
> Nope, it's unrelated to the cabac_table size, it's related to how the
> HW accesses the P/B reflists (there are 1 P reflist, and 2 B reflists,
> hence the 3 here).

Ah, ok!

> I guess we can have a '#define NUM_REFLISTS 3'.

Works for me. Please use NUM_REFLISTS on a consistent way, making it 
to reflect everywhere you might define or loop over those 3 reflists.


Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
