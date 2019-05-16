Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBB120D01
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 18:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vYWzakuYIiu0xhwDY6J0fj3ZN+sv9dFnRakBtwjlUI=; b=PC8+b6hHvfhea1
	ARoxnya8cO+ydj7jdlB7/fPyOmO72jKR4wSit7s+hyjL9inQJe/ucCj+n5Wid8y5P4wkfvJkkBnUs
	DX0LLXQ/BF2E6DVtrEoFIlobEE5X9qLO42yFYsgM8Z8te8xRERrxeeqe6r8BrlDiDow+Owg0YWLlM
	0UW2Bfy0s4U8Ore1UL8T0HI+cBi6qRfO63O+Xpl0nFL+K0pIsDnwNoN/ur87LQTbzOEJKwVTb59MH
	Kn5z+pNQp8YdWet5ssBo7q9utTcOpnMxNBVn5Bp6TpVFe0HnHRltqsmnJ0lX81dvvExCTw6WuG+3a
	rkMJ7WOUOHbv5k9zZeUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJGe-0008MQ-T9; Thu, 16 May 2019 16:30:05 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJGP-0007yV-Mx
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 16:29:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id f97so1880697plb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F+MUix4E2fzDWarwS4nmG/Em5BaLYXIJG0RnslLnuRA=;
 b=A/QcefCONy0p8hJbO0heZwLqxWZ8lsgdagrHghkE9zjmezGMvjfyieeXactlpqZRRa
 YLS81uVk2pJdVXGp9xaDmlgMq2U+xIeDeNkcu+gI4czxMzsnQt5Y7DBVdyYnqcLHRHSe
 /f/w5SMGU32q0oRor5O557Y/iSuZDQryFc1t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F+MUix4E2fzDWarwS4nmG/Em5BaLYXIJG0RnslLnuRA=;
 b=ApKphAnJ6yW5Fv1vkFoMi1baPWoMcSNol5R1ndVKWFz2vIG4DI+TznGGCMN8teplhr
 Eb3CetzjtmdDOE891ZnV61hkKnzed+LCvKgKvYsZCTYuQ5DniUlng1VZHWVZ7BaHIgjI
 1Di3HS/i63MnyqlspE+gx1MtdiDaYCOcOa71HUAFG6roctKfttu/CGJpFDF2FfkzwGTn
 DxThN0mdSs10yHfKzJ+xdk4QBST6NJMEtTrTIoGaa5A/E8mprF8XqWDeMxqe3Hg95Tzp
 e0fBbTOhBJIPnka2JWhJkord0cbX8pxYO/G5QoGGr5hNY2cmXZTQdLyJrKJ8DwvkJXgv
 LsNg==
X-Gm-Message-State: APjAAAW2TRSJSKJtQnenmyu6mTJcEbEnxp4qM3ZcMZmQE39gRK+1ptkx
 8zSfHqHp3wPbYrnfpvRYq490WSLg0GY=
X-Google-Smtp-Source: APXvYqxkK/qfoQgyJc5dgRsnMZtbcRgZDE5QF6K47Pw4/YozjwnhVzeOxcxp4uW/0m6HCYUODwDYOA==
X-Received: by 2002:a17:902:683:: with SMTP id 3mr9312171plh.209.1558024188932; 
 Thu, 16 May 2019 09:29:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id d85sm8140067pfd.94.2019.05.16.09.29.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:29:48 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: raise GPU trip point temperatures
 for veyron
Date: Thu, 16 May 2019 09:29:41 -0700
Message-Id: <20190516162942.154823-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
References: <20190516162942.154823-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092949_743446_A963415E 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhlIHZhbHVlcyBtYXRjaCB0aG9yc2UgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1Mg
My4xNAprZXJuZWwsIHRoZSAnb2ZmaWNpYWwnIGtlcm5lbCBmb3IgdmV5cm9uIGRldmljZXMuIEtl
ZXAgdGhlIGNyaXRpY2FsCnRyaXAgcG9pbnQgZm9yIHNwZWVkeSBhdCA5MMKwQyBhcyBpbiB0aGUg
ZG93bnN0cmVhbSBjb25maWd1cmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxj
a2UgPG1rYUBjaHJvbWl1bS5vcmc+Ci0tLQpDaGFuZ2VzIGluIHYyOgotIGFsc28gcmFpc2UgdGVt
cGVyYXR1cmUgb2YgY3JpdGljYWwgdHJpcCBwb2ludAotIGFkZCBlbnRyaWVzIGF0IHBvc2l0aW9u
IGluIGFscGhhYmV0aWNhbCBvcmRlcgotIGFkZGVkIGVudHJ5IHRvIGtlZXAgY3JpdGljYWwgdHJp
cCBwb2ludCBmb3Igc3BlZWR5IGF0IDkwwrBDCi0gdXBkYXRlZCBjb21taXQgbWVzc2FnZQotLS0K
IGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyB8IDQgKysrKwogYXJj
aC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi5kdHNpICAgICAgIHwgOCArKysrKysrKwogMiBm
aWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LXZleXJvbi1zcGVlZHkuZHRzCmluZGV4IGFiMmE2NmFhMzM3ZS4uM2QyNzY5ZjFiZWYyIDEwMDY0
NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMKKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCkBAIC03NSw2ICs3NSwx
MCBAQAogCWZvcmNlLWhwZDsKIH07CiAKKyZncHVfY3JpdCB7CisJdGVtcGVyYXR1cmUgPSA8OTAw
MDA+OworfTsKKwogJnBhbmVsIHsKIAlwb3dlci1zdXBwbHk9IDwmcGFuZWxfcmVndWxhdG9yPjsK
IH07CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLmR0c2kgYi9h
cmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLmR0c2kKaW5kZXggNThkYzUzOGI1ZGYzLi5h
ZWU4MzUwYjI4MDAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24u
ZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLmR0c2kKQEAgLTE0Miw2
ICsxNDIsMTQgQEAKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismZ3B1X2FsZXJ0MCB7CisJdGVt
cGVyYXR1cmUgPSA8NzI1MDA+OworfTsKKworJmdwdV9jcml0IHsKKwl0ZW1wZXJhdHVyZSA9IDwx
MDAwMDA+OworfTsKKwogJmhkbWkgewogCWRkYy1pMmMtYnVzID0gPCZpMmM1PjsKIAlzdGF0dXMg
PSAib2theSI7Ci0tIAoyLjIxLjAuMTAyMC5nZjI4MjBjZjAxYS1nb29nCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
