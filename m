Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2C658406
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 16:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG77aZ7h+fcum8KBRAL7nKZytldRrTytr8wTQCC6Dys=; b=hGktnS3CMaablc
	IYdckAmCiLUs59aobNg75bM7KEY4sP9VxaJYr0ex844xnbD8aWtcqQg5f+Xwn/s+yLmHe0oMpjJb1
	epzEAZ3ZFcCZLuuotV69bIW8WnMxiK6iPslUedpGkuM04q74ZKjDhbIEeVN4QtLNEZTezEaOQFeVY
	Srr2dhz37uMmXLO01MBgV8ZnyIx0vjiRX74yRh2QSSSsH7dLdEP6aX4kPL9cEUckXt+BFLiOLJnJs
	DSMwtm6Yl+7CEiPlbLY/OUpjKntBjQ6IQi0d81G9ND2wB6GpCF/4iaHjb75m2Cnit9/saXJTKk7do
	JbQ4YrewJjhc4yRo4ljg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUwP-00085B-S7; Thu, 27 Jun 2019 13:59:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUwL-00083w-Ni
 for linux-rockchip@lists.infradead.org; Thu, 27 Jun 2019 13:59:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id w9so7143376wmd.1
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jun 2019 06:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=HZ7QyNPTvF6/RgnmII34ur/JGsTqdFkUnUKXTuvqG/w=;
 b=ooazNoLWOxU7IwbCJhoA5ND74omxfkNA0U1UpIkyKlNt0uKAfdvPmkJmQH421o+src
 vHLl/RyQplDDT1tW40Dp93vFXUKuqLfSJXg+XUzCJcoYTZZGO4+o0KU/ZfLagw0bgegz
 wZBSx99uweaNbb2vAFhf51jahF3xYUMLdJMKzZid2NhISCpPSl25DVCmAaHc/iCEvqzt
 V15JjUpQIM1tcn7pXWbEW6dhtbporZSui1zZxUUr7YTVTg347Lia76DJHNyeo5Dbwg1w
 hv1riHzjcdEwAokiYUSBUrUU76pCTDr2HpASIT86s3UXxmXaVYUxyRFIB2OcBe61Dt1L
 f56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=HZ7QyNPTvF6/RgnmII34ur/JGsTqdFkUnUKXTuvqG/w=;
 b=QEHeSjuW3Nrxd9/jvimHVS9qc5OjNt4AsrmmTjEXJAgLDARA4suwNutTwpmk1JbvpJ
 8VQtHjWCHXqAQTxSpvwriW8pVN7VuLqCoKC6Ih1oz62fkSPJttNdNJd+kNr3H+ebQG7+
 XRRa0+VQ1mr66xv8xwO+zYSyhvHuHi1GrGQGxXhX9Tz1TUYGQdAZBIM6RdUs/7M1h86G
 r8oAuGSMm04baWu3awEF5m3wu4nGelsKsatKPOud4vjqmDoyIBEOh8mKv/4st5BduDL/
 no91tD4Zq7VDVY4hmKN3KYoAh3dm+PAli/DxF5/Xk5U83NsA98tkvx94ZSSjIO0lRxu5
 8q5A==
X-Gm-Message-State: APjAAAU/nleCZiGx3dmjXI0ePnZH/VIiNN9JguKy/j+FuvemQSW3sQN4
 Rtj+CLEBrnX2AqbNIGBc7QMYUA==
X-Google-Smtp-Source: APXvYqwaxWiKD/K7An3E8jt0LE3Y8mQ4GeKWfysCY8bRIdbz0ryFrlEPnonTiu8gbtoYhCpar5TrSg==
X-Received: by 2002:a1c:b146:: with SMTP id a67mr3282875wmf.124.1561643989260; 
 Thu, 27 Jun 2019 06:59:49 -0700 (PDT)
Received: from dell ([2.27.35.164])
 by smtp.gmail.com with ESMTPSA id y184sm5473350wmg.14.2019.06.27.06.59.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 06:59:48 -0700 (PDT)
Date: Thu, 27 Jun 2019 14:59:46 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Tony Xie <tony.xie@rock-chips.com>
Subject: [GIT PULL] Immutable branch between MFD, Clk, Regulator and RTC due
 for the v5.3 merge window
Message-ID: <20190627135946.GI2000@dell>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621103258.8154-1-tony.xie@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_065953_785909_37642609 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 huangtao@rock-chips.com, heiko@sntech.de, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGExODgzMzljYTVhMzk2
YWNjNTg4ZTU4NTFlZDdlMTlmNjZiMGViZDk6CgogIExpbnV4IDUuMi1yYzEgKDIwMTktMDUtMTkg
MTU6NDc6MDkgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xlZS9tZmQu
Z2l0IGliLW1mZC1jbGstcmVndWxhdG9yLXJ0Yy12NS4zCgpmb3IgeW91IHRvIGZldGNoIGNoYW5n
ZXMgdXAgdG8gOGVkMTQ0MDE5NzQ4MzBmMzE2YTQxOWIwNzNlNThlZjc1YTQ3M2E2MzoKCiAgY2xr
OiBSSzgwODogQWRkIFJLODA5IGFuZCBSSzgxNyBzdXBwb3J0LiAoMjAxOS0wNi0yNyAxNDo1Nzo1
OSArMDEwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KSW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1GRCwgQ2xrLCBSZWd1
bGF0b3IgYW5kIFJUQyBkdWUgZm9yIHRoZSB2NS4zIG1lcmdlIHdpbmRvdwoKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpIZWlr
byBTdHVlYm5lciAoMSk6CiAgICAgIHJlZ3VsYXRvcjogcms4MDg6IEFkZCBSSzgwOSBhbmQgUks4
MTcgc3VwcG9ydC4KClRvbnkgWGllICg0KToKICAgICAgbWZkOiByazgwODogQWRkIFJLODE3IGFu
ZCBSSzgwOSBzdXBwb3J0CiAgICAgIGR0LWJpbmRpbmdzOiBtZmQ6IHJrODA4OiBBZGQgYmluZGlu
ZyBpbmZvcm1hdGlvbiBmb3IgUks4MDkgYW5kIFJLODE3LgogICAgICBydGM6IHJrODA4OiBBZGQg
Uks4MDkgYW5kIFJLODE3IHN1cHBvcnQuCiAgICAgIGNsazogUks4MDg6IEFkZCBSSzgwOSBhbmQg
Uks4MTcgc3VwcG9ydC4KCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Jr
ODA4LnR4dCB8ICA0NCArKwogZHJpdmVycy9jbGsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDkgKy0KIGRyaXZlcnMvY2xrL2Nsay1yazgwOC5jICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgIDY0ICsrLQogZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvbWZkL3JrODA4LmMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMTkyICsrKysrKy0KIGRyaXZlcnMvcmVndWxhdG9yL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL3JlZ3VsYXRvci9yazgwOC1yZWd1
bGF0b3IuYyAgICAgICAgICAgICB8IDY0NiArKysrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZl
cnMvcnRjL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2
ZXJzL3J0Yy9ydGMtcms4MDguYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2OCArKy0KIGlu
Y2x1ZGUvbGludXgvbWZkL3JrODA4LmggICAgICAgICAgICAgICAgICAgICAgIHwgMTc1ICsrKysr
KysKIDEwIGZpbGVzIGNoYW5nZWQsIDExNTYgaW5zZXJ0aW9ucygrKSwgNTYgZGVsZXRpb25zKC0p
CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVh
ZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93
IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
