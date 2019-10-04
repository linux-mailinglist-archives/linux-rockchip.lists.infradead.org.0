Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE59ACB98D
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 13:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRii4m4kFvTqsRfuOnXyz02+yOB+c+gPVSyOZdP5MiE=; b=YRhfrdYSzN55kU
	opgSETDwIArNDyitc04/nV0yiPBi0CX9SiGRFQtQpE4Hdy3E7eFRnclZr4M3obYd3Yfn0cunqGlUy
	8f+J52C6Sx183MYPci9z+n1fDyGg9Y5kyHHBhQpHGepZ+sumAs5y5ubGNIhIZo7H7d1flLF7gV3Wk
	6svfzI+VPHko5NeDp4eRzvBvEHAhJuyuw/xcvPy+QYv0QPns5ymZQEaWJe82POYxDCbWKEqFwzDsL
	CEYPRai/Hp56T3BirJJ9bXFwcDNMdxfg0jOqliuDEuaWZh9TxSgfirh+mlXONMxWyN7g5MZX5ldjh
	hkm78tyfOpVVYSxV66Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMBh-0004Y3-6N; Fri, 04 Oct 2019 11:55:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMBe-0004X8-8b
 for linux-rockchip@lists.infradead.org; Fri, 04 Oct 2019 11:55:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id a6so5502652wma.5
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Oct 2019 04:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=hE9gO6iBemQRdrDLgOELHYEQ3kfZDPseTzp8k/zd/0A=;
 b=MkcX+BuxcotutguuloScLvrFR7CC0Ru2WHMu2SU+luqznVO9A274GNcwotoXBjHC/1
 BQKWtuykQJrWtgd1KLPlG873ZIhsxsYrFhH3KK5tzpu9hgPSPtC8FauXfazCvEDaiLxC
 /p0VowPOPlKoc8/MM+M12VlKvfsMuem9iCDKEtDyr8rfxT7g9XjOqwm6O7JDwpv7HAmi
 UpJlD7TR7zgR1sajpwh0CpJnPsmwfn+FPMgRCvYk4RVurm5Jq/rT12HQLrknUhayJ1v6
 KzbE828jvH0fmhUBjjL868gnBhCkOTvtyEiG1q5iKRjxPQWu2LJGJBvsgXOSzQAt7izx
 vQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=hE9gO6iBemQRdrDLgOELHYEQ3kfZDPseTzp8k/zd/0A=;
 b=faQY0SHq7XvI5uC4gRzyO+LFdY8bwaDaeXwyq0cxQNHqdXcmiQyQWjPTmQjXnQJJ/P
 JnC8AyaqzQH2y9zD4g8MUMaruSEzMzLJ2QfT9aPXtLVizlAiExzBvMiRwfWEybsEy5jb
 H/tJZwS2DpVr5Un3UNsuE4Nzx6Bqz3aK+a7zxoG89Z9VnqRJfg0sZh8EkE0LwTN7KxOT
 PCdD3uQG2XZda8jtt2+k/Pr3XpHB5YH+XtHWVR2lHV1oRx9oWhKuXBUxRTwv0Oxhh/q0
 246rWwBLLaor475uYEgTgSQA3U/4gJtOi9KHKXfEp6BGXOt536+Tu4n6ZMSEleZicFhL
 qPvQ==
X-Gm-Message-State: APjAAAVb9yAZ36XNk+EqupIJVs7vCUihPNuJSNJaPr2PjTsE2uMraDBY
 RE2/7ymq+tr4it9xVnd6kgznrQ==
X-Google-Smtp-Source: APXvYqxtwCiJ7aEpNUZVMoQ2xLV2qEzDkvPWWlvSDWKGJrKh1lNmVkUCeorQOWdoWBP1KOaD0bx0GQ==
X-Received: by 2002:a1c:2397:: with SMTP id j145mr10130361wmj.69.1570190148572; 
 Fri, 04 Oct 2019 04:55:48 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id r10sm5120239wml.46.2019.10.04.04.55.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 04:55:47 -0700 (PDT)
Date: Fri, 4 Oct 2019 12:55:46 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/4] mfd: rk808: fix rk818 ID template
Message-ID: <20191004115546.GA18429@dell>
References: <20190917081256.24919-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917081256.24919-1-heiko@sntech.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_045554_334181_5D8E4311 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: d.schultz@phytec.de, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 Joseph Chen <chenjh@rock-chips.com>, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCAxNyBTZXAgMjAxOSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cgo+IEZyb206IERhbmll
bCBTY2h1bHR6IDxkLnNjaHVsdHpAcGh5dGVjLmRlPgo+IAo+IFRoZSBSb2NrY2hpcCBQTUlDIGRy
aXZlciBjYW4gYXV0b21hdGljYWxseSBkZXRlY3QgY29ubmVjdGVkIGNvbXBvbmVudAo+IHZlcnNp
b25zIGJ5IHJlYWRpbmcgdGhlIElEX01TQiBhbmQgSURfTFNCIHJlZ2lzdGVycy4gVGhlIHByb2Jl
IGZ1bmN0aW9uCj4gd2lsbCBhbHdheXMgZmFpbCB3aXRoIFJLODE4IFBNSUNzIGJlY2F1c2UgdGhl
IElEX01TSyBpcyAweEZGRjAgYW5kIHRoZQo+IFJLODE4IHRlbXBsYXRlIElEIGlzIDB4ODE4MS4K
PiAKPiBUaGlzIHBhdGNoIGNoYW5nZXMgdGhpcyB2YWx1ZSB0byAweDgxODAuCj4gCj4gRml4ZXM6
IDlkNjEwNWUxOWY2MSAoIm1mZDogcms4MDg6IEZpeCB1cCB0aGUgY2hpcCBpZCBnZXQgZmFpbGVk
IikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IENjOiBFbGFpbmUgWmhhbmcgPHpoYW5n
cWluZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogSm9zZXBoIENoZW4gPGNoZW5qaEByb2NrLWNoaXBz
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgU2NodWx0eiA8ZC5zY2h1bHR6QHBoeXRlYy5k
ZT4KPiBBY2tlZC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiBbcmVzZW5k
IGFzIGl0IHNlZW1zIHRvIGhhdmUgZHJvcHBlZCBvbiB0aGUgZmxvb3JdCj4gU2lnbmVkLW9mZi1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAtLS0KPiAgaW5jbHVkZS9saW51
eC9tZmQvcms4MDguaCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
