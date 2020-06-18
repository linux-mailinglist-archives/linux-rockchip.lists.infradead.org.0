Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F0E1FF8AD
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tOdEsqh4vWIIerts1PpFET40Er2KnoB0xRBfaxv0g4=; b=fD58X82K5mg8SN
	TkQ7S6WuKAb1732vXyg4XSxJRp1RM/wImo5Fi/b98p4ngS8H/2gH1zIEu81JvBtEfFyLCg4NzaqF1
	uvI12kFRJf/sYMmNC69uXOPF/urKHH0g1REj96IcHE+7LB6mShb5oBiunyHXnJDCvvJxPFHKaxiR1
	YNPzZvgOisI2t4XPdGoNCKoflFT0X/L3OID5i5PX6H/KCviqwwRk7NI/5Ia8ZmjAeZXpqcjA1EPSO
	+DLDgEGmkPzczeb8F0bAYGqH8TnUQFki88EQ0LzLHrfFWSQHfPyy0BH3+sJPx+eU2ZkUMiW+n0jPF
	Hjo8l6N454kXbP6ogA3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx5D-0000IP-Qr; Thu, 18 Jun 2020 16:08:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx59-0000Gk-Qq
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:08:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id v24so2615391plo.6
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8sFgYtAh2b0Wohv3uaF5Qyt69kdsVZxcLGheuYLU8jY=;
 b=CLJW58wUdQ9cX2x6//WRzMUQKw87BP8bCFAC+UtrDcusYVavDEfW6ZAgZgVbyOv4cG
 po20i0OF0v5KMxOwwymCEx8zaOonmui7PkDy5D81vKyr3m4Vo3G9/WVOIUm6iaDNT6Ve
 0DxVCQgIZlV3IKvgzymeinGjrMuwPmcCbSWPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8sFgYtAh2b0Wohv3uaF5Qyt69kdsVZxcLGheuYLU8jY=;
 b=JP2CzyU2VupW5wFj5vBxlosqZsUh6ZWWFY3l+qR9/JvAUwYqlZM+hjigW2po8oxbR1
 OEB0BaqaPBVgdMOq55kfzPY82yDGaxRyCTW2WeHdByanz23r/FR4bLodP8F8JGQQW6eJ
 UyW1evKpqw1PtWeCD2dVD3gRraO33xV8h2ZZd6wvML0xszGqM/X75rsxi/b28OENc8Ri
 /w3ht1RbBv9klfs1SjnaiWfWvnke+KJM9N7l6blBRYZoqpcQ7i0A2nVlTQqx3F09dapu
 QkrQklXVkbPn84tEevqL1J88SHOG15PWd8joCpWCmEVgcS5W3MRmq3d3ScB2kM0RXvnn
 9cUg==
X-Gm-Message-State: AOAM5307YjFxR5XJANUT0F/AOMOD5wqjSA2rqpcGOAxb79zoIG/Ox41L
 yvoOPqsRWql7tD98j3OSWjD/NQ==
X-Google-Smtp-Source: ABdhPJyNaOqtpgacUTBxXtuk7d6u0lPY4DFww4TLwtCM1+qPYj/YE5W4CX/vrIc+/w+qayACut5lCA==
X-Received: by 2002:a17:902:ea8a:: with SMTP id
 x10mr4325689plb.330.1592496483193; 
 Thu, 18 Jun 2020 09:08:03 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id u4sm3264943pfl.102.2020.06.18.09.07.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:08:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 2/5] rk3399: spl: Print SPL banner after relocation
Date: Thu, 18 Jun 2020 21:09:45 +0530
Message-Id: <20200618153948.218506-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618153948.218506-1-jagan@amarulasolutions.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090803_892274_29A3CC9C 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VXN1YWxseSBwcmludGluZyB0aGUgU1BMIGJhbm5lciB2YXJpZXMgYmV0d2VlbiBhcmNoaXRlY3R1
cmUKb3IgYm9hcmQgY29kZXMuCi0gU29tZSB3b3VsZCBwcmludCBiZWZvcmUgcmVsb2NhdGlvbiBh
dCB0aGUgZW5kIGJvYXJkX2luaXRfZgrCoCBmb3IgbWFraW5nIHN1cmUgYWxsIGluaXRpYWxpemF0
aW9uIHByaW9yIHRvIHRoaXMgd291bGQgaGFwcGVuCsKgIHByb3Blcmx5LiBpZiBhdCBhbGwgdGhl
cmUgaXMgYSByZXF1aXJlbWVudCBmb3Igc2VyaWFsIGluaXQsCsKgIHRoYXQgaGFwcGVucyBwcm9w
ZXJseSBzaW5jZSBpdCBwcmludHMgYWxsIGFmdGVyIHRoYXQuCi0gU29tZSB3b3VsZCBwcmludCBh
ZnRlciByZWxvY2F0aW9uIGF0IHRoZSBzcGxfYm9hcmRfaW5pdCBmb3IKwqAgbWFraW5nIHN1cmUg
YWxsIGluaXRpYWxpemF0aW9uIHByaW9yIHRvIHJlbG9jYXRpb24gd291bGQKICBoYXBwZW4gcHJv
cGVybHkuIEFsc28gZGVidWcgdWFydCBvbiB0aGVzZSBjYXNlcyB3b3VsZCBiZQogIGF2YWlsYWJs
ZSBiZWZvcmUgcmVsb2NhdGlvbi4gU28gZGVidWcgc3VwcG9ydCBpcyBhdmFpbGFibGUKICBpbiBi
ZWZvcmUgYW5kIGFmdGVyIHJlbG9jYXRpb24uCgpSb2NrY2hpcCBTUEwgaXMgZm9sbG93aW5nIGZv
cm1hciBzdGVwIHRvIHByaW50IHRoZSBiYW5uZXIgYXQKdGhlIGVuZCBvZiBib2FyZF9pbml0X2Yu
CgpUbyBzdXBwb3J0IHZhcmlvdXMgY3VzdG9tIHVzZSBjYXNlcyBpbiBTUEwgbGlrZSBsZWRzLCBl
bnZpcm9ubWVudCwKYm9hcmQgZGV0ZWN0aW9ucyBsYXRlciBvcHRpb25zIGxpa2UgcHJpbnRpbmcg
dGhlIGJhbm5lciBhZnRlcgpyZWxvY2F0aW9uIHdvdWxkIGJlIGEgYmV0dGVyIG9wdGlvbi4gUHJp
bnRpbmcgYmFubmVyIHdvdWxkIGFsc28KaGVscCB0byBzdXBwb3J0IGRlYnVnZ2luZyBhdmFpbGFi
aWxpdHkgYmV0d2VlbiByZWxvY2F0aW9uIGNvZGVzLApsaWtlIGRlYnVnIHVhcnQgYXZhaWxhYmxl
IGJlZm9yZSByZWxvY2F0aW9uIGFuZCBiYW5uZXIgYXZhaWxhYmlsaXR5CmFmdGVyIHJlbGF0aW9u
LgoKQnkgZGVtb25zdHJhdGluZyBhbGwgdGhlIGFib3ZlIHVzZSBjYXNlcywgdGhpcyBwYXRjaCBp
cyB0cnlpbmcKdG8gcHJpbnQgdGhlIFNQTCBiYW5uZXIgYWZ0ZXIgcmVsb2NhdGlvbi4KClNpZ25l
ZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpUZXN0ZWQt
Ynk6IFN1bmllbCBNYWhlc2ggPHN1bmlsQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgotLS0KQ2hhbmdl
cyBmb3IgdjQ6Ci0gbm9uZQoKIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvc3BsLmMgfCAzICsrLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvc3BsLmMgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlw
L3NwbC5jCmluZGV4IGQ0YzgzYTExMTkuLjZkNWMwNTg1NDggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L21hY2gtcm9ja2NoaXAvc3BsLmMKKysrIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9zcGwuYwpA
QCAtMTQ3LDcgKzE0Nyw2IEBAIHZvaWQgYm9hcmRfaW5pdF9mKHVsb25nIGR1bW15KQogCWdkLT5y
YW1fdG9wID0gZ2QtPnJhbV9iYXNlICsgZ2V0X2VmZmVjdGl2ZV9tZW1zaXplKCk7CiAJZ2QtPnJh
bV90b3AgPSBib2FyZF9nZXRfdXNhYmxlX3JhbV90b3AoZ2QtPnJhbV9zaXplKTsKICNlbmRpZgot
CXByZWxvYWRlcl9jb25zb2xlX2luaXQoKTsKIH0KIAogX193ZWFrIHZvaWQgcmtfc3BsX2JvYXJk
X2luaXQodm9pZCkKQEAgLTE1OCw2ICsxNTcsOCBAQCB2b2lkIHNwbF9ib2FyZF9pbml0KHZvaWQp
CiB7CiAJLyogYm9hcmQgc3BlY2lmaWMgc3BsIGluaXQgKi8KIAlya19zcGxfYm9hcmRfaW5pdCgp
OworCisJcHJlbG9hZGVyX2NvbnNvbGVfaW5pdCgpOwogfQogCiAjaWZkZWYgQ09ORklHX1NQTF9M
T0FEX0ZJVAotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
