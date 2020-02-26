Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D793F16FB31
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 10:45:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44tkZfMSp8jiY03mRD7qSyPYRyj9T758CdY5CaFG23w=; b=hcyjVkkfU6a91l
	T3AR+3fww27vyjGo1hxvSdHajsr+tzF0JdXytZtbF/K20n7lWHk2vxymP/Xk6dZBVpxw3TFIcDx+2
	r9EW7xsF7Q/QxQG+XTSTcWP5c1gUv5QRCWz7/njp29fnJhOktmnDm0tLRPqP8OqOGcFk+PgcAzdWs
	FjJ4K/nh1X5LlKqHgpcVecb8QPirJtD6eFtUZlgUgW8dwxUJuXmS9JNp+l9/tbBRy/JgXTJOjOmOx
	45cLWQP1EoIKN1Y32KLnS8qt5cKWfYG0djKBMz03disTIKXGWAJZFx399tQO69g6I8ZOTxSLU9qfp
	mofAk5P5UBNFpkfccySg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tFp-00070Z-T4; Wed, 26 Feb 2020 09:45:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tFj-0006z0-6C
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 09:45:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id j7so2055643wrp.13
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Feb 2020 01:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=I2/gSehHpEGG5HyU6rvOAvWs+qM+dEuOlb2iDZhfsCc=;
 b=KsZBCXxQjP3PjDVkFMuNh4vuyBkqTdn2NRl2ChAUbpCbd+a0yef4bxD/D2MdFHPLtJ
 zRy6X3QItPqoaeaCLyD7hxPrLrxPC7WrIoGdec2Rh1VSlMStZO6y1uusJs78cIsGytZ1
 /R8mDcOOm/eo6ElG9W8aeYpM3yzruPr2oU7TfxQhRlklLSsapdrz3gvUqkT5aoTJZJuH
 kuVboEAZQmyouatkkW2PIPbVmiVp9mGKYsg81QYYF7m7LOxptVjRaE8BKe5JK5WwTbZ1
 iuKEQWHoSIY7DEKJI4DjPXvWcl5zqjnpHeyu0LjsWAKwpX7IGp6Df7aPtbmQq55K3zaa
 8nuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=I2/gSehHpEGG5HyU6rvOAvWs+qM+dEuOlb2iDZhfsCc=;
 b=PCtRD2P0NPp/Gxj9m8woZ0SrDO/Ezj7UzW/ZohbvXkzp4iTHFrEF8wL5INivnVVOFn
 IVDB5A80Lr78Ni6NNpZ6TzWXTfAyHTyGOLApRExnI6vTEZip71AkPAW26biSVChIEaSs
 7z8wGWuoyq+E5CB0HACbUityGN//lubbtdiwi1HosyDJ8XKMSvC2jrrBH+BEpzuZcMGA
 W0Nkh4iM9aiMDuEFQCqRBg2RNtEdMk5HI5DE521Mhf+p6rLN+8LsfLtrHKHEgQjiMfJt
 I7jXwn+gpEhMzEib7J4GOwEuPBsGKyeVxoE09aJQVDyVzIlDmCjGUFK4/FKSrawkJgrm
 nylg==
X-Gm-Message-State: APjAAAX+UUGXYzirobVuWCKluj0QFZtb3hvi5WkIlvPxw3YjaCWbYVIH
 V685+zEdjobfDonVPPjceG32zg==
X-Google-Smtp-Source: APXvYqyqn5Frqh1yyiqsq68fUiGQJz3ZgSLhazc2xAd38ClGvkekkMLptXz0iZrG0SpTCGNhX32h1g==
X-Received: by 2002:adf:ed8e:: with SMTP id c14mr4522993wro.80.1582710312601; 
 Wed, 26 Feb 2020 01:45:12 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id d13sm2564418wrc.64.2020.02.26.01.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 01:45:11 -0800 (PST)
Date: Wed, 26 Feb 2020 09:45:43 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 3/5] mfd: rk808: Stop using syscore ops
Message-ID: <20200226094543.GD3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_014515_253227_7630D1B2 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU3VuLCAxMiBKYW4gMjAyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgoKPiBTZXR0aW5nIHRoZSBT
TEVFUCBwaW4gdG8gaXRzIHNodXRkb3duIGZ1bmN0aW9uIGZvciBhcHByb3ByaWF0ZSBQTUlDcwo+
IGRvZXNuJ3QgbmVlZCB0byBoYXBwZW4gaW4gc2luZ2xlLUNQVSBjb250ZXh0LCBzbyB0aGVyZSdz
IHJlYWxseSBubyBwb2ludAo+IGludm9sdmluZyB0aGUgc3lzY29yZSBtYWNoaW5lcnkuIEhvb2sg
aXQgdXAgdG8gdGhlIHN0YW5kYXJkIGRyaXZlciBtb2RlbAo+IHNodXRkb3duIG1ldGhvZCBpbnN0
ZWFkLiBUaGlzIGFsc28gb2J2aWF0ZXMgdGhlIGlzc3VlIHRoYXQgdGhlIHN5c2NvcmUKPiBvcHMg
d2VyZW4ndCBiZWluZyB1bnJlZ2lzdGVyZWQgb24gcHJvYmUgZmFpbHVyZSBvciBtb2R1bGUgcmVt
b3ZhbC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0u
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9yazgwOC5jIHwgMjYgKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9u
cygtKQoKR29pbmcgdG8gaWdub3JlIHRoZSB1bnJlbGF0ZWQgY2hhbmdlIGluIHRoaXMgb25lIQoK
KHJldmlld2luZyB0aGUgcmVtYWluZGVyIGJlZm9yZSByZXNwb25kaW5nKQoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
