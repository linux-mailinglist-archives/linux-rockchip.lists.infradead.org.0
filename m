Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C2E198330
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 20:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWc8NQy2MdZpbE666XVTpL9BRm2xwhJZsL8GUtQNQtw=; b=HB0uc9CtzSMPaZ
	eScZCV3M4yShLsqyIbljs5bV6a2OccXlvHTdgAlekBGPrSQBjC7FWUfpfRvLGiI63b8Srvu+daQFg
	5aMKsHDCPLOKTSWQZBiLbRr7D9dud/sXXw9aPIlVtWLdR9pW3P8nzpA83O/eDt2QQQ0D1ILmPikzk
	mJsp6+HxQ0pNCVNpzNziUrBo8pKnnkf8BEKq29woK1JSabivjnTYkrG+JkEC4LWeAfY8sus0nRz29
	Icz8+fkqjbYeJTA2slx7Om2WBy9crXPai4LvukPWcTqTusxaB5TjWHaY5RXGjdYeC8rvKVir8ujLn
	pmuHBLoA6pYIwIgIJRUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyxh-0001xC-6V; Mon, 30 Mar 2020 18:16:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyxY-0001sT-Fl
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 18:16:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id c20so6440239pfi.7
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2020 11:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wJTLWcIFZyv0JFO9cta9pHUG+lGi0mCPWEKe9LuSPG8=;
 b=YggXH8/kUxgVU4iGMXf0TZjGMWQczCGPkpQCbvubHYOm+D+ePdw02kRDdJaBkiRG4x
 XRhu1ghnlm4LVptqsJk0C7U06mUA/Pu5Eg1uMCYjJuBmxlqEOPPtEIRR7NykgwJ+xjAW
 MXHBGxF2ZCVmZ+0ik3b/ZxSqEm1M2CxyCOn4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wJTLWcIFZyv0JFO9cta9pHUG+lGi0mCPWEKe9LuSPG8=;
 b=alHtnIu+Dnfeib3EvD9k9HG9Y8LQ/dQJzkTWY9xCqZHjRSdQreOEtLJ2Sk5SrsW9KZ
 RC2XJXycjXLSXr/+wSEM1nAbpE3lMF15v7nZfCoDTff3/ZBhX8vC2N4ydCuSedDB715/
 4taKFpoOkO4cjni4K4OzsP4lDkWtX8UC/RDHEz48LIm6CBTc59FoF5MTPtk+YLvkxdt8
 kKgzytYbtqvUhspk9u5uRbZmRR8ObIl64JXmWS/JyaS/wdO/DwwBuSxjvNpH0yAs4FG1
 kzSL4hb+a+X0V5kqArh4zn88D2QUXEVfcO9UhZxdxwwCpNi6NpMTHl2DBb3K1uf4sVwL
 i3Hg==
X-Gm-Message-State: ANhLgQ2Gh2Z+EWV1eNtfBf/n+k7wHcAnRBI60H7azNSUYONO2p2zitw9
 SxE9yz3Qmd+JWotvHnkxbVtNvQ==
X-Google-Smtp-Source: ADFU+vt68PFfi1d2cQppDdfNXrGTgrj1WkgBpFRWN0v/xxPWCRxZiq3kEzt8vMf05IB5YgznD2ccyQ==
X-Received: by 2002:a63:2c87:: with SMTP id
 s129mr12932224pgs.406.1585592187786; 
 Mon, 30 Mar 2020 11:16:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b95e:3742:c972:389e])
 by smtp.gmail.com with ESMTPSA id p7sm207452pjp.1.2020.03.30.11.16.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:16:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
Date: Mon, 30 Mar 2020 23:46:10 +0530
Message-Id: <20200330181613.29462-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200330181613.29462-1-jagan@amarulasolutions.com>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111628_570360_D5BEC407 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
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
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCkNoYW5nZXMgZm9yIHYyOgotIG5vbmUKCiBh
cmNoL2FybS9kdHMvcmszMzk5LXUtYm9vdC5kdHNpIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3Qu
ZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTktdS1ib290LmR0c2kKaW5kZXggOGI4NTdjY2ZjNy4u
Yjg0NmY5Y2RlNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaQor
KysgYi9hcmNoL2FybS9kdHMvcmszMzk5LXUtYm9vdC5kdHNpCkBAIC05OSw5ICs5OSwxMyBAQAog
fTsKIAogJnZvcGIgeworCS9kZWxldGUtcHJvcGVydHkvIGFzc2lnbmVkLWNsb2NrczsKKwkvZGVs
ZXRlLXByb3BlcnR5LyBhc3NpZ25lZC1jbG9jay1yYXRlczsKIAl1LWJvb3QsZG0tcHJlLXJlbG9j
OwogfTsKIAogJnZvcGwgeworCS9kZWxldGUtcHJvcGVydHkvIGFzc2lnbmVkLWNsb2NrczsKKwkv
ZGVsZXRlLXByb3BlcnR5LyBhc3NpZ25lZC1jbG9jay1yYXRlczsKIAl1LWJvb3QsZG0tcHJlLXJl
bG9jOwogfTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
