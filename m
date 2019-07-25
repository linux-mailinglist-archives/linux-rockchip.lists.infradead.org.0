Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACECE74F85
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 15:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Se9wiRj6QlC/hPGizCHANgB/9X6DrgL9K/F6IN1F+NM=; b=Ud0sA9oxSRwNLs
	nkRueXeJkTcOp8tdbSpufBee/t28uGSJjSa+8u+LR/x9Da0y0a07+gjYrP9SAexd3LIYolznU+m25
	T9wdNzjjfiiZLjbr2jCDP+xPar1g8F5HXcBJnhK5+LMVdhDG1WNjvjmulbOoSE/U9HUCcynyCEGE8
	7CNnu+fHOZVKcZk7c1Zo1gNoenyZ0mPVrsJ/WuIDjiOYnxzNP4ZCv3yF0n2euCSog+DkoRCL7D89G
	rxfMZQI64drfBvbc8PTtuOu6rd2eeWNlN1vYolfas7Dt/GKbKXQdYdzoXewcE5ZDiQ31mgKDtKUk2
	PpkIBPfheDLrycxfVqyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdqX-0005Me-DV; Thu, 25 Jul 2019 13:31:49 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdqT-0005M6-Rr
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 13:31:47 +0000
Received: by mail-lj1-x242.google.com with SMTP id k18so47990372ljc.11
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 06:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lRofjpGVnPdkvHjT1abpzFvdhqRUdMtCwITS9XC9FqY=;
 b=WKwOxX6KPDQIRmCgJAKTRU8nyTVTibB5C1TnIuihKcSV5lNt9QF4vT4B5iz0FMTva1
 X+7McxEoaoHiZtop26NDtdsbRmzb/o4oqU+CfFw5lOJcRcmxL8HDtEfX54kpPakjiubz
 MUTRw3XXFYfdTUeK+go0VcL/q1AxSnTaPZfY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lRofjpGVnPdkvHjT1abpzFvdhqRUdMtCwITS9XC9FqY=;
 b=BHYIRpaieoqqtK9gw++55+AyqM0R02w+7ebFtZfaJ3DWRDBO913uYsHmvv4L3oN/9a
 5vv9HXAkV/u2yLHsQD+U02xDMFvnc2xy/vQiPrS64s3oeB8+5vThy41sKyuYsmbLGQjn
 iYYuufHCISo5xG6fNWHbVrdZRQ2fw/HzuJbfkY0Ge7nIMGPPZ/Gbp6Hqj2baUmyzPtvj
 CEXMi/YtSCvSP4stVYXlNebw1cj4OG0T9V7O9kYV8dIvwSaxPU1jYa4O+bG1xOpXLyPg
 RqG72wha80LsYEQaWwD33BWSjyqvP2y5YUimp4CXkAyPCoECPDiBL6FBZsH539MY4rsX
 hgWw==
X-Gm-Message-State: APjAAAUMX/mexv7AtXa0ORj9YkNDQDrlK6FO8uvmBunsOhWSpwLHB3h5
 cue4yNRAdkrMkxxJQ0YoidE=
X-Google-Smtp-Source: APXvYqz/F986DupauyPnWK3++D6Z9b8wSPFEQgtug6IFVchRI8stLut7ttlybhQferFVWVbypQXzzQ==
X-Received: by 2002:a2e:3013:: with SMTP id w19mr46339678ljw.73.1564061503937; 
 Thu, 25 Jul 2019 06:31:43 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id l22sm9051754ljc.4.2019.07.25.06.31.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 06:31:43 -0700 (PDT)
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264 decoding
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-8-boris.brezillon@collabora.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <25cc2826-fc8f-570a-07fa-8cbdb11830a7@rasmusvillemoes.dk>
Date: Thu, 25 Jul 2019 15:31:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190619121540.29320-8-boris.brezillon@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_063146_073260_EEB86E42 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Hertz Wong <hertz.wong@rock-chips.com>,
 Andrew Morton <akpm@linux-foundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 19/06/2019 14.15, Boris Brezillon wrote:
> From: Hertz Wong <hertz.wong@rock-chips.com>
> 
> Add helpers and patch hantro_{drv,v4l2}.c to prepare addition of H264
> decoding support.
> 
> Signed-off-by: Hertz Wong <hertz.wong@rock-chips.com>
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> +
> +	/*
> +	 * Short term pics in descending pic num order, long term ones in
> +	 * ascending order.
> +	 */
> +	if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> +		return b->frame_num - a->frame_num;
> +
> +	return a->pic_num - b->pic_num;
> +}

Pet peeve: This works because ->frame_num and ->pic_num are u16, so
their difference is guaranteed to fit in an int.

> +static int b0_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
> +{
> +	const struct hantro_h264_reflist_builder *builder = data;
> +	const struct v4l2_h264_dpb_entry *a, *b;
> +	s32 poca, pocb;
> +	u8 idxa, idxb;
> +
> +	idxa = *((u8 *)ptra);
> +	idxb = *((u8 *)ptrb);
> +	a = &builder->dpb[idxa];
> +	b = &builder->dpb[idxb];
> +
> +	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
> +	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
> +		/* Short term pics firt. */
> +		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> +			return -1;
> +		else
> +			return 1;
> +	}
> +
> +	/* Long term pics in ascending pic num order. */
> +	if (a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> +		return a->pic_num - b->pic_num;
> +
> +	poca = builder->pocs[idxa];
> +	pocb = builder->pocs[idxb];
> +
> +	/*
> +	 * Short term pics with POC < cur POC first in POC descending order
> +	 * followed by short term pics with POC > cur POC in POC ascending
> +	 * order.
> +	 */
> +	if ((poca < builder->curpoc) != (pocb < builder->curpoc))
> +		return poca - pocb;
> +	else if (poca < builder->curpoc)
> +		return pocb - poca;
> +
> +	return poca - pocb;
> +}

Here, however, poca and pocb are ints. What guarantees that their values
are not more than 2^31 apart? I know absolutely nothing about this code
or what these numbers represent, so it may be obvious that they are
smallish.

Rasmus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
