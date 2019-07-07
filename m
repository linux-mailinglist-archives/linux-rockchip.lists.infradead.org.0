Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC06153A
	for <lists+linux-rockchip@lfdr.de>; Sun,  7 Jul 2019 16:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6u5mkfVLp10jft3o/CCH3zzOK4ezY4U6Ogw4tga0w0U=; b=W1DzcuFm7JwLas
	bQYRIRutmom/lg8k9ZkfJXZKQRcAvk1CBYsdqvkl+cCKB3vkp7WIy2hDQLGKhffLjjkfIEfwOSaD2
	zrUY5DWEkqVVOsKcqJoZrNIkSHJKmyHa6yaawoH0FtkNebdkpz6Qt4NgQj4u4J1BGUnHwH/a1Lhg4
	vWOjAFgG7YtetkiNwA1Q2vf3qGey6viwHOrrlhdmLHjGezlGu6MznocwQpSLGJOPP7yP+tWPQvYZW
	DgzFbvJHxJ5CATcsxKvf+Qv7Sr65u3/NNnLwymf2PimkjzRdXm1p8RroqV6z3SHmg1/YsHuZVQlG6
	cDlpFVjkVP7B9KhCEXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk85z-0000jl-VM; Sun, 07 Jul 2019 14:24:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk85v-0000jK-GV
 for linux-rockchip@lists.infradead.org; Sun, 07 Jul 2019 14:24:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so6885737pls.6
 for <linux-rockchip@lists.infradead.org>; Sun, 07 Jul 2019 07:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RzgqI621aWGbDHGCfudOESl9Mn0+99CKDMGTJU72pEQ=;
 b=CwB7zMo8m+w+lYJl2AfFe4HLR6Af2kKEyirdj9kyWsC7IuEg47plHvVYVf7qJZN6zl
 WC15Aw1sKoacOYgHqBYdZDpY78sPn9+yY46HBFwrVctnLEODvL6dYPImuk1dhzlqyM6/
 LrJIonOcgzJRi8yLkivwfPhfI8s0uUdmlL2fg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RzgqI621aWGbDHGCfudOESl9Mn0+99CKDMGTJU72pEQ=;
 b=fuVJwUFxOA6JKyE+2DRkKoOnaS+DNgEdBn4J6sxd/to7Dh0MqSQOYemFGdfQCqfHu/
 X1u86Tfa+rb6gIVJV3XolJErJ24gAZNUMRtf6xFPck8AZpHB1zVK3bT+gY4ZFMc0IH11
 GL+snPFQu9CqoQ9pGIwoQRzQ5EdKXc5CEPcUxQnPjP4QPcEI1GdHwxD97bNu2IwQ5mUb
 LzRNOt3pQ6Ikc4tgrMtXDh+hbA5l3DVQyF3jZel57QhxTXvhVG+Rp0273V6XOENu2kfN
 3tU7sz2wtT/hvTZNhREh+YAoAlc5hDp00gB+BMg9H7/ixbAHbyGLctoDQFKOCo33Zfdu
 A2vA==
X-Gm-Message-State: APjAAAViv2IVY0Zk7lx+TQnmc0j+KcwtYTE1iA5su6VseUt1YDrSSLaW
 ziOO865zI0151ubuy77BvAM1xw==
X-Google-Smtp-Source: APXvYqx/KLfLzgxok3IhCJQT8wSp+mQC4QkBTbVOByzEJOpol9aJ+serMXQ14efyX1cj2R2UxTTeNA==
X-Received: by 2002:a17:902:e40f:: with SMTP id
 ci15mr17885407plb.103.1562509485880; 
 Sun, 07 Jul 2019 07:24:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b29sm30544119pfr.159.2019.07.07.07.24.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 07 Jul 2019 07:24:44 -0700 (PDT)
Date: Sun, 7 Jul 2019 07:24:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 2/2] media: hantro: Add support for VP8 decoding on
 rk3288
Message-ID: <201907070704.D6C5A32D@keescook>
References: <20190702170016.5210-1-ezequiel@collabora.com>
 <20190702170016.5210-3-ezequiel@collabora.com>
 <1562164006.4604.7.camel@pengutronix.de>
 <20190704091934.3524f019@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704091934.3524f019@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_072447_573996_E67A3F60 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 ZhiChao Yu <zhichao.yu@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Hans Verkuil <hans.verkuil@cisco.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 09:19:34AM +0200, Boris Brezillon wrote:
> Hm, I fear we have the same problem in other places (including the
> patch series adding support for H264). Kees, I wonder if there's some
> kind of safe array iterator macro, something like
> 
> #define for_each_static_array_entry_safe(_array, _iter, _max_user) 		\
> 	_max_user = min_t(typeof(_max_user), _max_user,	ARRAY_SIZE(_array));	\
> 	for (_iter = 0; _iter < _max_user; _iter++)

This seems like a good idea to add, yes. As you've hinted in the macro
name, it won't work for allocated arrays (though perhaps we could add
support for such things with some kind of new array allocator that
included the allocation count, but that's a separate issue).

I bet static analysis could find cases to use for the above macro too.

> The problem with this approach is that it's papering over the real
> issue, which is that hdr->num_dct_parts should be checked and the
> driver/core should return an error when it's > 7 instead of silently
> iterating over the 8 entries of the dct[] arrays. Static code analysis
> tools can probably detect such issues too.

To avoid the papering-over bit, the macro could be like this instead,
where the clamping would throw a WARN():

#define clamp_warn(val, lo, hi)	({		\
	typeof(val) __val;			\
	__val = clamp_t(typeof(val), lo, hi);	\
	WARN_ONCE(__val != val);		\
	__val })

#define for_each_static_array_entry_safe(_array, _iter, _max_user) \
	_max_user = clamp_warn(_max_user, 0, ARRAY_SIZE(_array)); \
	for (_iter = 0; _iter < _max_user; _iter++)

This does have the side-effect of clamping _max_user to
ARRAY_SIZE(_array), though that might be good in most cases?

(Also, is the "entry_safe" name portion the right thing here? It's not
doing anything "safe" like the RCU versions, and there is no "entry"
since the expectation is to use the _iter value?)

> Any advice on how to detect such problems early on?

Doing static analysis on this means a tool would need to know the range
of values coming in. I wonder if Coverity noticed this problem?

-- 
Kees Cook

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
