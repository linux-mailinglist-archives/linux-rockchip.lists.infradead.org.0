Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2AA51D90
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Jun 2019 23:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pP20G1q/aqBQ1nLEqcfcFROnShIjIAr5KF1jFS0yQE=; b=rMVPIP5LoVaBJu
	kh+53ElfCOCcwMH2NHmY08n2INx6wndQiC23220r4ctq7BCH6vN/hYFpQWu/brXHwdJRYrjTYzAfd
	0v62UMixEw1+fOkBGw/RhlheKtwD9RWSX5Tbhsd7Awnwnw7/hE5yficeuw2jIjvwnr9wDwUvWncNH
	aa1jbk3GEIvJS2qP981QxfbhumzaAyoMtbioJ8fbpG4gFt32sLla6XiopiUHT9Uah+jkroS2mJGWP
	W+/GNowxwlG6mwTo+YR0FOhRAQTvHhg2vz39gE0HjTw9VGo3cQ8SBxM0hbUP/QK7nRv83KcfT79Sx
	qBpxh2MMJX1JTBDiub2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWzJ-0001eP-Pf; Mon, 24 Jun 2019 21:58:57 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWzG-0001cV-AZ
 for linux-rockchip@lists.infradead.org; Mon, 24 Jun 2019 21:58:55 +0000
Received: by mail-io1-f66.google.com with SMTP id e3so555727ioc.12
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2019 14:58:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NEFj1m00BQHw9ShNEs9XZxRgQ7JCz9e7ngBon7KyAz4=;
 b=c3meyO5v4QcF2ScQzE5MI3BXgMyEsGT0PV66A56BzjnFRjgyDjst0Bfpg4B5KFQ6Gj
 e4/cxjFfMpg2DfRxzgqWGGCsuVFOIjzhQsBh3vUzTkL9E01762UAn6in1JXIIHQpVabE
 iRmVAD/E6z0JpiyDd2kMXFRS7A656dXza5ZqoBZACQYXuARvLcMVuhw8jhXtyKB2L5ia
 VZmAOimQ1dV5Sa9axlvguiFfBTKiFkfftFSIM81QFF95wAXGiLBg2eNbWgiEnoLmpnT9
 EeiQ5LZBhrB6UkZ+wyLCXBEF6W64TUfSkPFhiys2Uey1E5ium41o0yosj7Fhb26cgYE8
 WHWA==
X-Gm-Message-State: APjAAAUz5xbrMGwXgjsYvvu472HJPQ45EuX9Cu8+8wT0iGDDuTEwN+lO
 6IF77uFYXN5FdvR3ShzVq0gt5uQ=
X-Google-Smtp-Source: APXvYqw/FHO+gVZRrGcciOK3h3Kb/yWTmo0PoEZ7PQLBbItysz7a1oMFgC77m1j4HXKE5Et7o3a8FQ==
X-Received: by 2002:a5d:8759:: with SMTP id k25mr17594429iol.307.1561413532967; 
 Mon, 24 Jun 2019 14:58:52 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.247])
 by smtp.googlemail.com with ESMTPSA id l5sm14717301ioq.83.2019.06.24.14.58.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 14:58:52 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 01/15] dt-bindings: display: rockchip-lvds: Remove panel
 references
Date: Mon, 24 Jun 2019 15:56:35 -0600
Message-Id: <20190624215649.8939-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624215649.8939-1-robh@kernel.org>
References: <20190624215649.8939-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_145854_379862_6ED2184A 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhlIHBhbmVsIGJpbmRpbmdzIGFyZSBvdXRzaWRlIHRoZSBzY29wZSBvZiB0aGUgUm9ja2NoaXAg
TFZEUyBpbnRlcmZhY2UKYmluZGluZy4gVGhlIHJlZmVyZW5jZXMgYXJlIGFib3V0IHRvIGNoYW5n
ZSB0b28sIHNvIHJhdGhlciB0aGFuIHVwZGF0ZQp0aGVtIGp1c3QgZHJvcCB0aGUgc2VjdGlvbiBv
biB0aGUgcGFuZWwgYmluZGluZ3MuCgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNv
bT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IE1heGltZSBSaXBh
cmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnClNpZ25lZC1v
ZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Ci0tLQogLi4uL2JpbmRpbmdzL2Rp
c3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtbHZkcy50eHQgICAgICAgfCAxMSAtLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLWx2ZHMudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9j
a2NoaXAtbHZkcy50eHQKaW5kZXggZGE2OTM5ZWZkYjQzLi43ODQ5ZmYwMzkyMjkgMTAwNjQ0Ci0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3Jv
Y2tjaGlwLWx2ZHMudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLWx2ZHMudHh0CkBAIC0zMiwxNyArMzIsNiBAQCBUaGVp
ciBjb25uZWN0aW9ucyBhcmUgbW9kZWxlZCB1c2luZyB0aGUgT0YgZ3JhcGggYmluZGluZ3Mgc3Bl
Y2lmaWVkIGluCiAtIHZpZGVvIHBvcnQgMCBmb3IgdGhlIFZPUCBpbnB1dCwgdGhlIHJlbW90ZSBl
bmRwb2ludCBtYXliZSB2b3BiIG9yIHZvcGwKIC0gdmlkZW8gcG9ydCAxIGZvciBlaXRoZXIgYSBw
YW5lbCBvciBzdWJzZXF1ZW50IGVuY29kZXIKIAotdGhlIGx2ZHMgcGFuZWwgZGVzY3JpYmVkIGJ5
Ci0JRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvc2ltcGxl
LXBhbmVsLnR4dAotCi1QYW5lbCByZXF1aXJlZCBwcm9wZXJ0aWVzOgotLSBwb3J0cyBmb3IgcmVt
b3RlIExWRFMgb3V0cHV0Ci0KLVBhbmVsIG9wdGlvbmFsIHByb3BlcnRpZXM6Ci0tIGRhdGEtbWFw
cGluZzogc2hvdWxkIGJlICJ2ZXNhLTI0IiwiamVpZGEtMjQiIG9yICJqZWlkYS0xOCIuCi1UaGlz
IGRlc2NyaWJlcyBkZWNyaWJlZCBieToKLQlEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9wYW5lbC9wYW5lbC1sdmRzLnR4dAotCiBFeGFtcGxlOgogCiBsdmRzX3BhbmVs
OiBsdmRzLXBhbmVsIHsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
