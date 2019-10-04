Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0D8CBA17
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 14:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFZbMC2MVRodcPB5a+9fUzpEixI04XUPP23C7Bw18n4=; b=dlykbetlGEBuIt
	C/kzjh83zi1Zte+/0QjHdFlzaLPA08deHzIzhSMvvGEd4msxlGU5aR9a0j+RrlNYCPOonHg73BsCs
	19OPRzXhz/gw7ZNMsZUQRuaE4VKPuThCvdV/rYUjuh+/1RauVRBQHoxlDAtygCV1gbgMQR2twwcJ9
	PyYE8lZjxmWaFR8zz4f+7iUbJEVpPrpcyihnhsfNycyLYqvwwncVqisvZ/SlfRyjGcCXFdDRez8RT
	hiNHFa9Rl6MdKsekywvFtaHijyyKSBmiZCethiyTSA2WsZ2+hdUVU2WYb4r3kMY2YwQ10SPrYgOSq
	Q+FNkef4A3Gmj15Vt5QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMSh-0003Zo-RZ; Fri, 04 Oct 2019 12:13:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMLw-0004Mr-ET
 for linux-rockchip@lists.infradead.org; Fri, 04 Oct 2019 12:06:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id j11so1086643wrp.1
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Oct 2019 05:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=We68HJxGgO15qFx9UZUNDGh7sk7bT+Kwug0ALzuQsgY=;
 b=NriUHG6VukNQjGu8MNskrjCSxEZSffrlfYToRknIpZeqtR0c55oRRc+ol3gEWrRo1P
 7dvfIkwMUt2fzCwRZcIV4HqrRqFSvgsPPq0YV9NHuKfzoIqkZVrzcOTLjnBpty1d51JK
 WagYC6pI2Iu1aYkUPLhSt2Y0qiuZ5hgZCDDLGmJyd3QlcHo8C6Q6yl5ZbCowhn9nSDyD
 YZQau8nus69zchLlrcbI6rbCYMCHD2XYXzlHtKvo132ZHGG4WpSu6oU504ERhlIUUK7x
 G3xWYa4MQO40ioao2YQ8a7aA5Rvl/P/mP8XR1d7tNs1nEwgMQOXVT2/KOLNycDyAlrCm
 8NFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=We68HJxGgO15qFx9UZUNDGh7sk7bT+Kwug0ALzuQsgY=;
 b=WI165so7cscDosnEyomlofE0gLVV7MqkNIhnJVubgjvqPn9dDq7oDJrwgylMKkGKw2
 kasPiyuiGCqt+xdY90cGwK4sXHzl1t/emoPjlTpzex+0B+KYovVeWjyvQE6FP/KzAgnP
 x7oxsh1D0HkfGF7tpPDkCsA7Jo+NVAFPL9Fm/dR+NmLvouS6F6j+M6/KUUg30iSPOHde
 BYhxwDdos53bduQ4vH2yGskp+ssmIcGf5ltUu7oO9i0MqwCwTqEqlvkWY4kcOsYU4OED
 6gdOKsL1lLbrvnNhihQKHOiGnQbD6PgKBxchtzCu8GiiIAgieqk/Sp9UD1PoIBwcGM4i
 2WhQ==
X-Gm-Message-State: APjAAAXSKY/jkwNHygOUGpkTBOs8fnIJ5A6yw5yzIoCHq5lZtV2PF6ZY
 jcejWRE2tWfeUJtF5YSwYMzJ7y561+U=
X-Google-Smtp-Source: APXvYqwbVDl1j0TzxmmaS06SyhmcA22vQ72irFyeh55DhDFBpntHYV03Kg10QTCZ99RU2Jv4m0MTww==
X-Received: by 2002:adf:fb11:: with SMTP id c17mr12069368wrr.0.1570190790922; 
 Fri, 04 Oct 2019 05:06:30 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id f83sm6585666wmf.43.2019.10.04.05.06.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 05:06:30 -0700 (PDT)
Date: Fri, 4 Oct 2019 13:06:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 4/4] mfd: rk808: use DEFINE_RES_IRQ for rk808 rtc alarm irq
Message-ID: <20191004120628.GC18429@dell>
References: <20190917081256.24919-1-heiko@sntech.de>
 <20190917081256.24919-4-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917081256.24919-4-heiko@sntech.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050632_520533_0481E045 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 d.schultz@phytec.de, linux-kernel@vger.kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCAxNyBTZXAgMjAxOSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cgo+IERvIG5vdCBvcGVu
IGNvZGUgdGhlIGRlZmluaXRpb24sIGluc3RlYWQgdXNlIHRoZSBuaWNlIERFRklORV9SRVNfSVJR
Cj4gbWFjcm8gZm9yIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlr
b0BzbnRlY2guZGU+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCA2ICstLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0
aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmlj
YWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
Rm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
