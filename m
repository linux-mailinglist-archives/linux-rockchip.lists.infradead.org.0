Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A46120367
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 12:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GH0CCAqOW0Mkx7HTiqx4xx1LnDI/fTS+CfBOAnCR2LU=; b=Le5rVMSb/a7RYo
	GKJ3WMpwDMXS9s6s7c14cil2p/bqiqDMmg3JwLrLvul3qrJoqvar11LWVnREhoLZJ+aBeXbdag/ON
	kfwzcCk8irotWTKX9yETM3Zlql/r3zMP+clw2pR59Tq/rZNWP6IZ1h31F4e7JcDIqOl/AKOaZT4uA
	1d2MUQirAgKQ5eliGjYTDNsHtxHbCsq/2td3exf5MA+lr3trTYjWM8pwaPdhxNZM56/dk85wC257Y
	vALYai2r6C0vN1lMzWpUN/TagCkVkSU3SqHY0tqV8TL+ETtrUE9cwpXm6HLRJcMFm4Mdufizpbm0A
	mtMytYaXk7ss/lii/3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoIH-0000rZ-Uo; Mon, 16 Dec 2019 11:12:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoI4-0000hU-Oj
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 11:11:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so6721457wre.10
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 03:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=2dxoabKlBZGvbp4gfeIRY6j7pCmpniW5VhZdZM1jvSg=;
 b=gAzRCm/Mi70HEKFLVKwdw4o6dgW1+mLf9GMIm8nSgC7Qz7NVXFTtfe89fsNxF5IPwO
 sNRdlKFk1DehYMbFr3XQ+pzSGskhva5BA9u9F5N1Y+UyWNBPIWImKo/IOxWFzToLNjXz
 I7HXqTpp1ZR7c9w2GQKByZ+FLo7L14/KXzvlnLv99C3e1u2ojDXJu2LMgf+bEWt/aWGm
 5GYZubOutSIqq8w7Ef4Qv0BVyjXAJKWKOhfacE46OxeHUKmjbYzDTDM8SL/J+GayssjG
 pKQvwVNHZ5buP2ykKauqxNaYT4XEvhGGimm7YEeqZppb2oGCLnev0ZZnNcDUvRjkzstJ
 ImqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2dxoabKlBZGvbp4gfeIRY6j7pCmpniW5VhZdZM1jvSg=;
 b=Zs2qYzHtirDEyjnW2/1PinjsU1ViQpRdqNsyN+pChTxjygTOTCVS3qoIkVFdiOiImP
 ROCYvhzYW/neB9nDbxevcm1jm+/D+D3yyzBIDi6vqbWrqJKtoIFpINLtaEhs3mz7oX3C
 a0c70LfuUxQkYYdfKlLSuCYQua5GYiSRSW5wvBJSlQ0EVZ04nTlTzzzk7eQSJx5PWkg8
 9kW46nsqe8x7XC/sfAJFRX/BgAoAAcMT/ZAV5MLI8XnbOeLwFd27lIYclWiHBk0MEvIF
 TJaJPmzrnOyVokWaTNvsQgyjF1aFzdjEEM9CILQgi+LUWKRva8xSpIAutZfc10PKPauH
 yNng==
X-Gm-Message-State: APjAAAWLDLtntJWi+dTffJFXBLgvgID4fjC/9pWZQ0ZWQBgyIAIFM4An
 UiUmFGDsbyx77FUfsb3xnsf71w==
X-Google-Smtp-Source: APXvYqx8pA749AH1DqU2BLWtKrkPOyGDfdptUcuuJl8+7mbfN9t9G/HQd47nlhBpyBSIKall5Rya2w==
X-Received: by 2002:adf:bc87:: with SMTP id g7mr30557610wrh.121.1576494711131; 
 Mon, 16 Dec 2019 03:11:51 -0800 (PST)
Received: from dell ([2.27.35.132])
 by smtp.gmail.com with ESMTPSA id g25sm24456932wmh.3.2019.12.16.03.11.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 03:11:50 -0800 (PST)
Date: Mon, 16 Dec 2019 11:11:50 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [RFCv1 1/8] mfd: rk808: Refactor shutdown functions
Message-ID: <20191216111150.GA2369@dell>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <20191206184536.2507-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206184536.2507-2-linux.amoon@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_031152_812749_7A80C944 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Schultz <d.schultz@phytec.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCAwNiBEZWMgMjAxOSwgQW5hbmQgTW9vbiB3cm90ZToKCj4gRnJvbTogRGFuaWVsIFNj
aHVsdHogPGQuc2NodWx0ekBwaHl0ZWMuZGU+Cj4gCj4gU2luY2UgYWxsIHNodXRkb3duIGZ1bmN0
aW9ucyBoYXZlIGFsbW9zdCB0aGUgc2FtZSBjb2RlLCBhbGwgbG9naWMKPiBmcm9tIHRoZSBzaHV0
ZG93biBmdW5jdGlvbnMgY2FuIGJlIHJlZmFjdG9yZWQgdG8gYSBuZXcgZnVuY3Rpb24KPiAicms4
MDhfdXBkYXRlX2JpdHMiLCB3aGljaCBjYW4gdXBkYXRlIGEgcmVnaXN0ZXIgYnkgYSBnaXZlbiBh
ZGRyZXNzCj4gYW5kIGJpdG1hc2sgYW5kIHZhbHVlLgo+IAo+IGxpbms6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC85Mzc0MDQvCj4gQ2M6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFNjaHVsdHogPGQuc2NodWx0
ekBwaHl0ZWMuZGU+Cj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21h
aWwuY29tPgo+IC0tLQo+IFtyZWJhc2VkIG9uIGxhdGVzdCBrZXJuZWxdCj4gTW9kaWZpZWQgdGhl
IEFQSSB0byBzZXQgdGhlIHZhbHVlLgo+IFRoaXMgY2hhbmdlcyB3ZXJlIHN1Ym1pdGVkIHdpdGgg
YmVsb3cgcGF0Y2guCj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRj
aC85Mzc0MDQvCj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCA4NyArKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGlu
c2VydGlvbnMoKyksIDYxIGRlbGV0aW9ucygtKQoKTm90IHN1cmUgd2hhdCdzIGhhcHBlbmluZyB3
aXRoIHRoZXNlIChjb21wZXRpbmc/KSBwYXRjaC1zZXRzLiAgSSdtIG5vdApwbGFubmluZyBvbiBn
ZXR0aW5nIGludm9sdmVkIHVudGlsIHlvdSBndXlzIGhhdmUgYXJyaXZlZCBhdCBhbmQgYWdyZWVk
CnVwb24gYSBzaW5nbGUgc29sdXRpb24uCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFy
byBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
