Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F083976327
	for <lists+linux-rockchip@lfdr.de>; Fri, 26 Jul 2019 12:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loZLSsx1MwAkLkK/q2wUSFOUjLWI15s+O9sn3jmPIts=; b=EtvFdi4O3MMo2q
	T0yiVNtwjjmhFrZbvH0PrKOMuRPWV4vNSxZrUly0Xwf7ignXBnq55tGx1XBANxpx5xBSNeDOXiPl9
	NhUK3TsGYXiEHCCvunoVAkZR9euE3sDUY/aY/r+AVdc1zeCqYC/Q5GGsYiphKIQ1LbN5uL9VXEzij
	eGwmoSSh9OW12c4dZ8rVz7Rq6VdrLiuwNXm4Md8fXRDf/XyXwWxz/ZHKGqSxMi1XLPF/www2ac/Ka
	VxrNXy3CIFNUQZ0Po7ntLhdcCXl9SfdcfVfILzCbTJp1fYGwo48klFM4tCBr0Xrl0xXhHQn8CGaJp
	GZX7GlmBjp3Tmr4yKkyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqx8L-0004xB-Rr; Fri, 26 Jul 2019 10:07:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqx80-0004gW-Rx
 for linux-rockchip@lists.infradead.org; Fri, 26 Jul 2019 10:07:11 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8B85828BE70;
 Fri, 26 Jul 2019 11:07:01 +0100 (BST)
Date: Fri, 26 Jul 2019 12:06:58 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264 decoding
Message-ID: <20190726120658.53022c21@collabora.com>
In-Reply-To: <25cc2826-fc8f-570a-07fa-8cbdb11830a7@rasmusvillemoes.dk>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-8-boris.brezillon@collabora.com>
 <25cc2826-fc8f-570a-07fa-8cbdb11830a7@rasmusvillemoes.dk>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_030709_172947_6E467D6D 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019 15:31:41 +0200
Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:

> On 19/06/2019 14.15, Boris Brezillon wrote:
> > From: Hertz Wong <hertz.wong@rock-chips.com>
> > 
> > Add helpers and patch hantro_{drv,v4l2}.c to prepare addition of H264
> > decoding support.
> > 
> > Signed-off-by: Hertz Wong <hertz.wong@rock-chips.com>
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> > +
> > +	/*
> > +	 * Short term pics in descending pic num order, long term ones in
> > +	 * ascending order.
> > +	 */
> > +	if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> > +		return b->frame_num - a->frame_num;
> > +
> > +	return a->pic_num - b->pic_num;
> > +}  
> 
> Pet peeve: This works because ->frame_num and ->pic_num are u16, so
> their difference is guaranteed to fit in an int.
> 
> > +static int b0_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
> > +{
> > +	const struct hantro_h264_reflist_builder *builder = data;
> > +	const struct v4l2_h264_dpb_entry *a, *b;
> > +	s32 poca, pocb;
> > +	u8 idxa, idxb;
> > +
> > +	idxa = *((u8 *)ptra);
> > +	idxb = *((u8 *)ptrb);
> > +	a = &builder->dpb[idxa];
> > +	b = &builder->dpb[idxb];
> > +
> > +	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
> > +	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
> > +		/* Short term pics firt. */
> > +		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> > +			return -1;
> > +		else
> > +			return 1;
> > +	}
> > +
> > +	/* Long term pics in ascending pic num order. */
> > +	if (a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> > +		return a->pic_num - b->pic_num;
> > +
> > +	poca = builder->pocs[idxa];
> > +	pocb = builder->pocs[idxb];
> > +
> > +	/*
> > +	 * Short term pics with POC < cur POC first in POC descending order
> > +	 * followed by short term pics with POC > cur POC in POC ascending
> > +	 * order.
> > +	 */
> > +	if ((poca < builder->curpoc) != (pocb < builder->curpoc))
> > +		return poca - pocb;
> > +	else if (poca < builder->curpoc)
> > +		return pocb - poca;
> > +
> > +	return poca - pocb;
> > +}  
> 
> Here, however, poca and pocb are ints. What guarantees that their values
> are not more than 2^31 apart?

Good question. Both should normally be >= 0, which I guess prevents the
s32 overflow. This being said, it's something passed by userspace, and
I don't think we check the value (yet).

> I know absolutely nothing about this code
> or what these numbers represent, so it may be obvious that they are
> smallish.

Well, a safe approach would be to replace those subtraction by a
ternary operator.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
