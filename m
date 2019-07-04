Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145D25F8D8
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jul 2019 15:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRBk2c0aMUpY6f2sC/7CvSi7N/EN2DEBVap04bLkBK0=; b=b8KUGa6AbkJyS4
	M0PRTOEeAOUV3P0fgPyrtsha6AOopyoeO4agh0GlTJnd4Og1Hzlz6thBaGvkIssBRh2GzQ19T2Et3
	pdmAn0iTrw/aPpS1AbfcEw7RDPIJ+IxgxB5JVryj7/qjdLDpOCn6uV6iegKfxLzeJV3H7oDUroVGf
	qFYZ/5LVdKOs1EmYo9GWBsCI77zsp1FSMB6XL4/o18HbdRSXMIE/3Mz6ZzhSPNqIXo80Gy0ruhtfr
	5GBCdKjgj8B1Z7QtinanetXZQQTFaDFlOkLxobBis8HpnN8yRU7L7DKsizy9zpIXz0xYO8rH9FM1h
	exHupV455u+/gkGrXVVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1RC-0003cZ-47; Thu, 04 Jul 2019 13:06:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1R8-0003bK-Sm
 for linux-rockchip@lists.infradead.org; Thu, 04 Jul 2019 13:06:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E9D8F287FCD;
 Thu,  4 Jul 2019 14:06:04 +0100 (BST)
Date: Thu, 4 Jul 2019 15:06:01 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 1/2] media: uapi: Add VP8 stateless decoder API
Message-ID: <20190704150601.05509027@collabora.com>
In-Reply-To: <dadc0a899608939b456ea714c86d56ad0a3a08f9.camel@collabora.com>
References: <20190702170016.5210-1-ezequiel@collabora.com>
 <20190702170016.5210-2-ezequiel@collabora.com>
 <4206efe071473daee60cc330ae7934697110516f.camel@collabora.com>
 <dadc0a899608939b456ea714c86d56ad0a3a08f9.camel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060607_059974_A9A24CB8 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Hans Verkuil <hans.verkuil@cisco.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Pawel Osciak <posciak@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 04 Jul 2019 10:00:33 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:


> 
> Oops, this is just an internal note, it seems I forgot to remove this one.
> 
> > I am right to think that this is basically the size in bits of the
> > frame header ? Maybe it could be another way to formulate it ? I'm just
> > trying to think of formulation that will better guide the developers
> > implementing the parser feeding this. You basically need to parse the
> > header to get this size (as everything is dynamically sized).
> >   
> 
> Depending what you call "frame header", then yes, it's the size in bits.
> 
>                              first_part_size          parttion_sizes[0]
>                                 ^                     ^
>                                 |                     |
>                        +--------+------+        +-----+-----+
>                        | control part  |        |           |
>    +--------+----------------+------------------+-----------+-----+-----------+
>    | tag 3B | extra 7B | hdr | mb_data | dct sz | dct part0 | ... | dct partn |
>    +--------+-----------------------------------+-----------+-----+-----------+
> 
> The above shows a VP8 frame, "macroblock_bit_offset" is the size in bits of
> the "hdr" portion: i.e. the header of the first partition (aka control partition).
> 
> Thinking about it, the current description is quite confusing.
> 
> How about:
> 
> "Size in bits of the frame header. In other words, this the size in bits of the header
> portion of the first partition".

How about having a similar diagram somewhere in the spec? It's usually
much clearer than a sentence, at least that's my opinion.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
