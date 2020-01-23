Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2512146E6E
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 17:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFxQAUJJqoupKlbA/ALLi8dcJ02mI96u0GNwfrMBX+0=; b=JOWI0WuLGDVjGA
	O0fnZHNL+oialQCDLPGAE0B5BUoO/YvFBpCmPRNvktPPVkloKQykUiGxIXLS3b7ipJBFrj16ySHUz
	c6CWl1wpyFhoCP031zLMhLD/PhIubbxkqVth4HQy6DVg9dL9kwFcUt9XWSw6U1GMTY/RqwhWtxqCQ
	+g4s/kJDQQINPFVftbyJXByul2c4kEgwdsuFeLRaD54Yv2pkhg+rRpJc55OEnwQ9ktbQam4XgAF8U
	L56Q+bBzEvXYP5L+V9m58j6mEoNKqLQCZHp4dhlZtej4105lbeSjDfLGTpX2pAjV8i6CABdbQauS2
	mlFhjKLKyanvrxBv2oRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufM5-0007UL-76; Thu, 23 Jan 2020 16:29:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufM2-0007TE-91
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 16:29:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id w2so1780276pfd.3
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 08:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ndtYoQ6Nt/cBfDDV6NtfbvXyNMRmPW16rAbNsEk3+no=;
 b=DKr9jE2mEQbxDqSQlD7HcG6ohrT1JlGQ4jy7t9MUNba3HuiXvd9DJzXjaAmHzECkA0
 1l98YaX43bZA9ybL7dceAOZpl7bXK/h0olezzAmic1zwuWOlgwswMIc8bu0qS5iql1SG
 u/uPEso31N5ivAjK+3hQS4TJE2ITkt+Huc8tA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ndtYoQ6Nt/cBfDDV6NtfbvXyNMRmPW16rAbNsEk3+no=;
 b=tTon8yRfFdoSOT1jE8Vfk9IvD8Eubysjb6cmWUMQOcN8UuI2XwZZYYzXsn8bxXJMct
 tSw7az833L5hvPngvAehq9UDmhvScPDS+r/YpaNmhAnoiTknF8+57ujzKZwIyLKARLEC
 CCE8YUVsAgrl9b6YmOS7ceJnuBMOEiWzOm/wsroh47S7X2gI9Yt3YExrNMD0DIYyJw8Y
 YoMdBT2YzAG6ezvJvp2ifWvj7+H6wxFfBpSWhHp6hmg8HCWKQ3u1H9fdbxCp7yT9bOI1
 LP4KU+/0Q1YNy7MboCeP6z1Rm7rjKXHArU7uyUe1kA2w5pih56u7PxA838K6LPr6vdbz
 Hzfw==
X-Gm-Message-State: APjAAAVI4jx5JEHEnKpgoX12f0MeFrEuPAnvEGnPY3ahgboEygPyb06Z
 n70GHUh8fyUiWemCpbKzZ+bcpA==
X-Google-Smtp-Source: APXvYqx2xrqC9DHYjAWz5fCLRMgsW6ujMM97+ltFSIpI7SH2KWfi0gCOWqtES/tKblYnHoo7l+DMxQ==
X-Received: by 2002:a63:27c4:: with SMTP id n187mr4960310pgn.305.1579796953688; 
 Thu, 23 Jan 2020 08:29:13 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id u1sm3188909pfn.133.2020.01.23.08.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 08:29:13 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
Date: Thu, 23 Jan 2020 21:58:42 +0530
Message-Id: <20200123162845.10651-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123162845.10651-1-jagan@amarulasolutions.com>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_082914_325256_B25E7D1A 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGludXggc3VwcG9ydGluZyBhc3NpZ25lZC1jbG9ja3MgZm9yIFZPUCBvbiByazMzOTkgYnkgYXNz
dW1pbmcKVS1Cb290IG5vdCBpbml0aWFsaXppbmcgaXQgb24gdGhpcyBsaW51eCBjb21taXQ6Cgpj
b21taXQgPDYxN2Y0NDcyYmRkMz4gKCJhcm02NDogZHRzOiByb2NrY2hpcDogaW5pdCByazMzOTkg
dm9wIGNsb2NrIHJhdGVzIikKClRoZXJlIGlzIG5vIHNwZWNpZmljIG5lZWQgdG8gaW5pdGlhbGl6
ZSB0aGVzZSBhc3NpZ25lZCBjbG9jawppbiBVLUJvb3QgYXMgdmlkZW8gZHJpdmVycyBzdGlsbCB3
b3JrIHdpdGggZGVmYXVsdCBhY2xrIGFuZCDCoApoY2xrIHZhbHVlcy4gU28sIHRoZXNlIGNsb2Nr
cyBhcmUgc2ltcGx5IG5vdCBzdXBwb3J0ZWQgYnkgcmszMzk5CmNsb2NrIGRyaXZlci4KCkJ1dCwg
ZHVyaW5nIHN0ZGlvIHByb2JlIG9mIHZpZGNvbnNvbGUsIHRoZSBkZXZpY2UgcHJvYmUKd2lsbCB0
cnkgdG8gY2hlY2sgd2hldGhlciB0aGUgYXNzaWduZWQgY2xvY2tzIG9uIHRoYXQgdmlkZW8KY29u
c29sZSBub2RlIGlzIGluaXRpYWxpemVkIG9yIG5vdD8gYW5kIHJldHVybiBlcnJvciBpZiBub3Qu
CgpTbywgZGVsZXRlIHRoZXNlIHByb3BlcnR5IHZpYSAtdS1ib290IGR0c2kgYXMgdGhlcmUgaXMK
bm8gc3BlY2lmaWMgbmVlZCBpbiBVLUJvb3QuCgpTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxq
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCiBhcmNoL2FybS9kdHMvcmszMzk5LXUtYm9v
dC5kdHNpIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMz
OTktdS1ib290LmR0c2kKaW5kZXggNDAyNDBiYmZjMi4uYjhiMjBlZDIyZCAxMDA2NDQKLS0tIGEv
YXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvcmszMzk5
LXUtYm9vdC5kdHNpCkBAIC02NCw5ICs2NCwxMyBAQAogfTsKIAogJnZvcGIgeworCS9kZWxldGUt
cHJvcGVydHkvIGFzc2lnbmVkLWNsb2NrczsKKwkvZGVsZXRlLXByb3BlcnR5LyBhc3NpZ25lZC1j
bG9jay1yYXRlczsKIAl1LWJvb3QsZG0tcHJlLXJlbG9jOwogfTsKIAogJnZvcGwgeworCS9kZWxl
dGUtcHJvcGVydHkvIGFzc2lnbmVkLWNsb2NrczsKKwkvZGVsZXRlLXByb3BlcnR5LyBhc3NpZ25l
ZC1jbG9jay1yYXRlczsKIAl1LWJvb3QsZG0tcHJlLXJlbG9jOwogfTsKLS0gCjIuMTguMC4zMjEu
Z2ZmYzZmYTBlMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
