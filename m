Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E97B46B1B
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 22:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXtRgn6OSrw5giu0HbJUB1NAWv9PGW9RIzXs+mQk9As=; b=kSrKjjcEcSnucs
	wLV1KP7mpOTTPRoICsSIvW7205QYBx3LrueDQBj2HVy48DhSwVO8vUTE3btfIUMatNu9IV/WLAGNW
	IQpEtt58jB6N70ND6si+nAqBpkU1Xf8J4DIzcEsnRIjYrp9HwE5yrO6Utmb6sXYQHRVlSuVSy7QQ2
	WimqJSg/4syUfXDlsxphC2V0Fi9lEbrEJwXaMp9qv5EEhptnn2Su2qLhjItnL7keR3BDQL2Hx0VRd
	oHyyrF4hZsVFvHXPsVm7PtxC6pJEOvur2hvj1dvldDc0Mh4CqAxTyKfwemhrB81VZ5DI1ZWjrHjn2
	PznH1l+0Vu/kVbDAk3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbszs-0008HT-M2; Fri, 14 Jun 2019 20:40:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswQ-0003yg-R2
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 20:36:56 +0000
Received: by mail-ed1-x544.google.com with SMTP id p26so5269319edr.2
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 13:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vlm+rv94huTn04MhgYNqn9Qe+r+R2T5g6JPxRxFgFew=;
 b=URv6OAXgbuSACR/wqNmpMG4uTxnz3YmKH29b+NByyHHXifzir7/gnX2Y4XUbydaCLO
 3ytdGd4BIq+Zf+KcBZZ0tzbRnJVNS8SkEDTxgkBtuobGwLWkALrGjHB77k4cwGFsN3ZM
 Ayb2bKnimM3veuDPuP6aAqesG6eT7FN9IDrmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vlm+rv94huTn04MhgYNqn9Qe+r+R2T5g6JPxRxFgFew=;
 b=cf+SUjYxmks8cbv4ui4m6yBnHz9e7nPMD8T0Ww7G3btcJtuUYh4NDNcu1t6CbzRJnA
 +Y4mxkkaZOiRUMdSed+nYCqE+olRKaF6oQDnBMOkk0wsOcquhTQalZDXsDjGOpB0HEhx
 ya0XE0AaftknPcQs3R/hSFIGbiPcfiOc/amSjE4V2EqlXYE+gXe9TYqZSucCCAR97F4z
 Sq70k3Ff1s5PINXCd4kKFQxrRAZFmTBaJja/pZ9X/jpX2LdBEiSrA5MCDY2Dy8xV6qjt
 /XGVcNuQi32lgs+faVTOnnRGjgbNuAy3KT7cXYnSYqskI5dovC9wd74FZQysNghOhXi4
 TU1A==
X-Gm-Message-State: APjAAAVBlGQ6kz82phTsj03QQG3JebsFsd6nO69W1Yl5tVMKWdhMZSbV
 0rTi4NEy221BHDfxSs2CvtYVpw==
X-Google-Smtp-Source: APXvYqz/rw+nXPEfVEGNMIVqUQ9lr23BCUcLfFlX0HI0dbMkkTCBDzcUsWQu2IaYJTDJ0IL9OADk7Q==
X-Received: by 2002:a05:6402:78c:: with SMTP id
 d12mr43018114edy.160.1560544613235; 
 Fri, 14 Jun 2019 13:36:53 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm1166672edd.49.2019.06.14.13.36.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:36:52 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 27/59] drm/rockchip: Drop drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:43 +0200
Message-Id: <20190614203615.12639-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133654_907410_B082279E 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW5keSBIdWFu
ZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNo
LmRlPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmluZGV4IDU5
MDkxYjYyNDFlYy4uNzgyOTc5ZjFiNTVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZHJ2LmMKQEAgLTIxOSw4ICsyMTksNiBAQCBzdGF0aWMgc3RydWN0IGRybV9k
cml2ZXIgcm9ja2NoaXBfZHJtX2RyaXZlciA9IHsKIAkuZHVtYl9jcmVhdGUJCT0gcm9ja2NoaXBf
Z2VtX2R1bWJfY3JlYXRlLAogCS5wcmltZV9oYW5kbGVfdG9fZmQJPSBkcm1fZ2VtX3ByaW1lX2hh
bmRsZV90b19mZCwKIAkucHJpbWVfZmRfdG9faGFuZGxlCT0gZHJtX2dlbV9wcmltZV9mZF90b19o
YW5kbGUsCi0JLmdlbV9wcmltZV9pbXBvcnQJPSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2Vt
X3ByaW1lX2V4cG9ydAk9IGRybV9nZW1fcHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3Nn
X3RhYmxlCT0gcm9ja2NoaXBfZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX2lt
cG9ydF9zZ190YWJsZQk9IHJvY2tjaGlwX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUsCiAJLmdl
bV9wcmltZV92bWFwCQk9IHJvY2tjaGlwX2dlbV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
