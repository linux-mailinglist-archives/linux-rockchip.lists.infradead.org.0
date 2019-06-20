Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1214C5EE
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 05:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c47zZq0izjKAX6dS2EsyToGk4HklvNPUyxFqimuKZnw=; b=Yrz5evBkidWq0y
	fQrhqM1qI9yJW821rldiAyk4RGXDYDWP9F1Mdw7Q45C+X9razCBDrGMePgmFSz9D+A51pBfV4ndHe
	XKTRl5w4TuyRejJdczjMxvplJ+iN0jiyQ7aTaCP0bvUHbTEg167qG2SPe47+xi8dh+o45USUzvuZ+
	bqHxQO3Tb4hSNVK/ENiVlbm8UML+wyBiQT3nswqrL9BBmD8VHQ5kcCrDUrXU4cHu2kRCfHEideY5T
	BwOIEoRsENijgtvwRa/1AUQICCQ3LNrqeO3RmlHATIcRtGYEL29m6lp57stRnU4jr6wF0TVb1blC1
	TAxVUvbedsZB3kJ80kGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdo36-0008AB-4w; Thu, 20 Jun 2019 03:47:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdo33-00089i-2y
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 03:47:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 442C0260E5C
Message-ID: <94add735d542fcf9236869801303a446d4b19996.camel@collabora.com>
Subject: Re: [PATCH 2/2] media: hantro: Add support for VP8 decoding on rk3288
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Thu, 20 Jun 2019 00:47:29 -0300
In-Reply-To: <20190617154024.1fdb5d3c@collabora.com>
References: <20190613151040.8971-1-ezequiel@collabora.com>
 <20190613151040.8971-3-ezequiel@collabora.com>
 <20190617154024.1fdb5d3c@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_204741_269146_D89140D0 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: kernel@collabora.com, ZhiChao Yu <zhichao.yu@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Hans Verkuil <hans.verkuil@cisco.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 2019-06-17 at 15:40 +0200, Boris Brezillon wrote:
> On Thu, 13 Jun 2019 12:10:40 -0300
> Ezequiel Garcia <ezequiel@collabora.com> wrote:
> 
> 
> > +static void cfg_parts(struct hantro_ctx *ctx,
> > +		      const struct v4l2_ctrl_vp8_frame_header *hdr)
> > +{
> > +	struct hantro_dev *vpu = ctx->dev;
> > +	struct vb2_v4l2_buffer *vb2_src;
> > +	u32 first_part_offset = VP8_FRAME_IS_KEY_FRAME(hdr) ? 10 : 3;
> > +	u32 dct_part_total_len = 0;
> > +	u32 dct_size_part_size = 0;
> > +	u32 dct_part_offset = 0;
> > +	u32 mb_offset_bytes = 0;
> > +	u32 mb_offset_bits = 0;
> > +	u32 mb_start_bits = 0;
> > +	struct vp8_dec_reg reg;
> > +	dma_addr_t src_dma;
> > +	u32 mb_size = 0;
> > +	u32 count = 0;
> > +	u32 i;
> > +
> > +	vb2_src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> > +	src_dma = vb2_dma_contig_plane_dma_addr(&vb2_src->vb2_buf, 0);
> > +
> > +	/*
> > +	 * Calculate control partition mb data info
> > +	 * @macroblock_bit_offset:	bits offset of mb data from first
> > +	 *				part start pos
> > +	 * @mb_offset_bits:		bits offset of mb data from src_dma
> > +	 *				base addr
> > +	 * @mb_offset_byte:		bytes offset of mb data from src_dma
> > +	 *				base addr
> > +	 * @mb_start_bits:		bits offset of mb data from mb data
> > +	 *				64bits alignment addr
> > +	 */
> > +	mb_offset_bits = first_part_offset * 8
> > +		+ hdr->macroblock_bit_offset + 8;
> > +	mb_offset_bytes = mb_offset_bits / 8;
> > +	mb_start_bits = mb_offset_bits
> > +		- (mb_offset_bytes & (~DEC_8190_ALIGN_MASK)) * 8;
> > +	mb_size = hdr->first_part_size
> > +		- (mb_offset_bytes - first_part_offset)
> > +		+ (mb_offset_bytes & DEC_8190_ALIGN_MASK);
> 
> Nit: can we have operators placed at the end of a line instead of
> the beginning of the following line?

Sure.

Thanks for the review,
Eze


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
