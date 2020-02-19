Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F84164197
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Feb 2020 11:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3ayRmaMg7VV5DplAp+uJ9WU1O+KLCQIix7rfxbAA/E=; b=fhpzlLnIgl011N
	RsuKaE1r0DVr/IMcIYtwGO1jlXxwUkngITKNFuKYtblDugkdnbuLh1U1JMTsYneCvNSpjp6B1mZIJ
	w50mYPFfKwRpAaYXBwYNpK9Gl3xT5MVCw09kwAR9X+Kqw/DlLEy21HY/yYBZEla5oLUFZxZGwcQD+
	2/kLc20MkQ1MFnVONqsBh1Ttgc3+x1/8ouK0p2IIvGKtffHcErXyuLRqhTzyDh+uduQyKugWvv+Qv
	WgXmTaHBxIkk3o1IiblFokeNjHjjy1Uj6o6BjIx8vtx/tblHvn2RSbItHospNM9y6E0+hkc5FX0gA
	T50Ij0Kt2wMqZQAKOJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MV2-0004gn-EI; Wed, 19 Feb 2020 10:22:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MUk-0004VQ-DZ
 for linux-rockchip@lists.infradead.org; Wed, 19 Feb 2020 10:22:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so27556555wrw.8
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Feb 2020 02:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CMpRLsmk2k79rSr4KQhFtq3ElR3/0UtAr1kCQ3We7NU=;
 b=O3jdQvb+9ovBVXNh5T60os5D7I3PwklUDEkTtY9Fd9ZxslmOCcFYC4A2/yLdbjk032
 FqeYnBrZcoCUFlQD3eyk2D16mIxakVQz+p2j+tZpcJ1x1CHjgdVbt6bxwMknwRIuv5/G
 z2vcwp88Gn5ikRGxdl6YqzL3Jl41rKE2zmDO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CMpRLsmk2k79rSr4KQhFtq3ElR3/0UtAr1kCQ3We7NU=;
 b=r91pbg+MaXiCU7JZD7NHHaVhx2E0WEOAr+7wG3RebjcK+dIv+V1F5XJE8mywXHXXIq
 rACYaFAV8DaFVIVP9koudksCula6mZ+st2DL/aWmX2hBS9ObAmqedYEPyAPhvX4GnFn8
 GgkYcdWRnDQlCnLVHjW3P53T4YiXjNS3lyC4ZGrrcETz84ZojA5qURuZpupw2//obxG/
 SSt82s8OwBgsfhS1HCK9/fYf08wNgbagwl2i/l3D2PXg2ef+5rBe131y/zsgkTmbtDpK
 jkQcDEMSkejcs5Ca9cS3/+MqF1sOkOlEwbvEyIBf/WNknk6+A8FYDlWeVyh6YRnVXNvr
 DqVw==
X-Gm-Message-State: APjAAAWDAD2x4OrbViQ7N1hLafsV/3WoJQmxhCzeHla7XDsSpoOl7CY5
 mqWIePQiLCJcbqNW7yFRnSC5rw==
X-Google-Smtp-Source: APXvYqwzq2IJDg4cLJQDZGtlmKCnczEtj6OtQr/NmLMYBmqn9J5kT1N+Crv5wlJsBfOekrIHBGRkOg==
X-Received: by 2002:adf:a35e:: with SMTP id d30mr32693147wrb.33.1582107736797; 
 Wed, 19 Feb 2020 02:22:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:16 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 38/52] drm/rockchip: Drop explicit drm_mode_config_cleanup call
Date: Wed, 19 Feb 2020 11:21:08 +0100
Message-Id: <20200219102122.1607365-39-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022218_489451_B37BC4BE 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SXQncyAoYWxtb3N0LCB0aGVyZSdzIHNvbWUgaW9tbXUgc3R1ZmYgd2l0aG91dCBzaWduaWZpY2Fu
Y2UpIHJpZ2h0CmFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgoKQXNpZGU6IEFub3RoZXIgZHJpdmVy
IHdpdGggYSBiaXQgbXVjaCBkZXZtX2t6YWxsb2MsIHdoaWNoIHNob3VsZApwcm9iYWJseSB1c2Ug
ZHJtbV9remFsbG9jIGluc3RlYWQgLi4uCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5j
b20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5j
IHwgMTAgKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwpp
bmRleCAyMGVjYjE1MDhhMjIuLmQwZWJhMjFlZWJjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCkBAIC0xMzUsNyArMTM1LDkgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9kcm1fYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJaWYgKHJldCkKIAkJZ290byBl
cnJfZnJlZTsKIAotCWRybV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOworCXJldCA9IGRybV9t
b2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOworCWlmIChyZXQpCisJCWdvdG8gZXJyX2ZyZWU7CiAK
IAlyb2NrY2hpcF9kcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKIApAQCAtMTc0LDExICsx
NzYsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RybV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikK
IGVycl91bmJpbmRfYWxsOgogCWNvbXBvbmVudF91bmJpbmRfYWxsKGRldiwgZHJtX2Rldik7CiBl
cnJfbW9kZV9jb25maWdfY2xlYW51cDoKLQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkcm1fZGV2
KTsKIAlyb2NrY2hpcF9pb21tdV9jbGVhbnVwKGRybV9kZXYpOwogZXJyX2ZyZWU6Ci0JZHJtX2Rl
di0+ZGV2X3ByaXZhdGUgPSBOVUxMOwotCWRldl9zZXRfZHJ2ZGF0YShkZXYsIE5VTEwpOwogCWRy
bV9kZXZfcHV0KGRybV9kZXYpOwogCXJldHVybiByZXQ7CiB9CkBAIC0xOTQsMTEgKzE5Myw4IEBA
IHN0YXRpYyB2b2lkIHJvY2tjaGlwX2RybV91bmJpbmQoc3RydWN0IGRldmljZSAqZGV2KQogCiAJ
ZHJtX2F0b21pY19oZWxwZXJfc2h1dGRvd24oZHJtX2Rldik7CiAJY29tcG9uZW50X3VuYmluZF9h
bGwoZGV2LCBkcm1fZGV2KTsKLQlkcm1fbW9kZV9jb25maWdfY2xlYW51cChkcm1fZGV2KTsKIAly
b2NrY2hpcF9pb21tdV9jbGVhbnVwKGRybV9kZXYpOwogCi0JZHJtX2Rldi0+ZGV2X3ByaXZhdGUg
PSBOVUxMOwotCWRldl9zZXRfZHJ2ZGF0YShkZXYsIE5VTEwpOwogCWRybV9kZXZfcHV0KGRybV9k
ZXYpOwogfQogCi0tIAoyLjI0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
