Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D67220D05
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 18:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIMDAAk+3eTomF7RVr1VIbRbra4PBryFtT64vJ3Ndyw=; b=B0Q0o7/VgtdbNH
	4vX53FOsTqDq3FCW0VdLQvbztf5evZZptY7Vs3TuNYalrgQFv6JCdP5rHM8Lv0Z/WFqdPHzcMMUG4
	Jbwskrqf6ags4AwEmwyMijkOvRyrg7GD9sKC/aM4H9K9arfAtlr8unGHvx2VNY9ygkrm9HlmVs/Yg
	mF9fgr1Sm8/GANNhftRVwlnOwlT3tBlS13XmxPXpus5/kjSbKjT04Qwl8wbe6FZSC198T61ODqRNZ
	c9eWUihVEl1SZIIgOIbyqCx1BxY1JuGnLkQHJIF8Oft6mOA0BcZOHRI9cF3Y92ixhtm5ClTWA+YLn
	FZUKkhvsC24iQAnOTRAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJGt-0001GP-4w; Thu, 16 May 2019 16:30:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJGQ-0007zG-P8
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 16:29:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id n19so2130040pfa.1
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 09:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+5tBSaJenAAl2/2/E0QKr9xsfgAq0TAexbm1VudYCYY=;
 b=MkJydfFNb8Zarh1j8X6Nl7cZR1+cKqVxQrYZ0p/8MRxz06Xrun/tupqmE6v8jCMnpb
 jbSSanskoXF6x0hoBAhAGR48KDIIxgbxfZ+7kJhS/gAzPjro3h1FdLMLJkTx4WY/mXoq
 sfTF/JOBJPhgwL5NJWHhaVbxr+nH8ynJAG1LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+5tBSaJenAAl2/2/E0QKr9xsfgAq0TAexbm1VudYCYY=;
 b=CafvnY6TQaw84u7qv1yU3OpwoDfgFfOExHtjD5IJCgvp4nTTEsE3e7yuZl8rc0T/GC
 p0bL1EMa0sMax5MKwtUeMaZRyhld+Hwk5L8Ran3WR9cNP1Bu2JpegxEndltvVm+2jy63
 w/lJ60uLFiKhBK8dLA1gRG8fhi/dr4/kUKrHsRBSNiTGbDxpEM8r88Sur1IxHyDlhCvq
 ApF+3YP4iAHNt4Plaxgcx9NkPeYEk7cXSy6gE+SgFwRSG+0V/K5wx48EPFWVn34XD1TA
 8FEHuDf9EXVTuzGabicX0F7ZqrwVL0Qhx1TlJmTll83lCqM/rLCxKN5ZGuZKzoXoOS+X
 J1aA==
X-Gm-Message-State: APjAAAXnmacxxuV+oGO3ufBcasO/AVdiPA8vAoUP3hqx1J617t6oXokX
 Nngs3enZpJHLKB6w2QOfFpwyzg==
X-Google-Smtp-Source: APXvYqw+BIh+offSQSSziALymyeAhxhq1O7ckJ1x3tzKL9gNG55hDnHX76jw+v/G285jFXE5k2ohHA==
X-Received: by 2002:a62:2b43:: with SMTP id r64mr54971169pfr.210.1558024190331; 
 Thu, 16 May 2019 09:29:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id s198sm8644416pfs.34.2019.05.16.09.29.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:29:49 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/3] ARM: dts: raise GPU trip point temperature for speedy
 to 80 degC
Date: Thu, 16 May 2019 09:29:42 -0700
Message-Id: <20190516162942.154823-3-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
References: <20190516162942.154823-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092950_877052_A6BF17A9 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

UmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBHUFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBz
cGVlZHkKdG8gODDCsEMuIFRoaXMgaXMgdGhlIHZhbHVlIHVzZWQgYnkgdGhlIGRvd25zdHJlYW0g
Q2hyb21lIE9TIDMuMTQKa2VybmVsLCB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIHNwZWVkeS4K
ClNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgotLS0K
Q2hhbmdlcyBpbiB2MjoKLSBhZGQgZW50cnkgYXQgcG9zaXRpb24gaW4gYWxwaGFiZXRpY2FsIG9y
ZGVyCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIHwgNCAr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCmluZGV4IDNkMjc2OWYxYmVmMi4uNmY4NzBkODk4NjZi
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCkBAIC03NSw2
ICs3NSwxMCBAQAogCWZvcmNlLWhwZDsKIH07CiAKKyZncHVfYWxlcnQwIHsKKwl0ZW1wZXJhdHVy
ZSA9IDw4MDAwMD47Cit9OworCiAmZ3B1X2NyaXQgewogCXRlbXBlcmF0dXJlID0gPDkwMDAwPjsK
IH07Ci0tIAoyLjIxLjAuMTAyMC5nZjI4MjBjZjAxYS1nb29nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
