Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532221726A3
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Feb 2020 19:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ln6yrAtKXWReXmD21j/skOKvhnAH9N5KC8g5QvV3TEM=; b=Uq0/bPLOW5ZzE5
	lhmA3Zy1gxcKksbTVnIDSP0Iuuk9l6a1KsNgMpdkwTV/KAw4mrKETmBU8kqZF2/kA9EBnRqgkQGQQ
	QW0IlktuJo8x4P6pWFf39lCTOUiPh7iIsWiMeW0S7n7Itpp/Pe2/9K7B80ffWhBLUoPrMQeYdWqx9
	uAXEvJEr978aETcn2IJW3+MThncuHUkeoKSiwyYwl2mAwjQ1hovRvr3lqNqKpBYjBLouJqVNRQjfj
	F/VL6WOVjoalSLbQizVbd47sxJOFuroP+Aq9EhZMGiS6aFrv/Qrgg1N9E6Cc+/1KAOeDosE+KOKbZ
	LUbPZ4u2gzpIjCGcGDlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NiT-0003qG-Jv; Thu, 27 Feb 2020 18:16:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nhp-0003Fv-Tn
 for linux-rockchip@lists.infradead.org; Thu, 27 Feb 2020 18:16:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id a141so435856wme.2
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Feb 2020 10:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XH8HTUf+N983dtr3AIooE5hJOMY5xFR/UBpOsmUWfIc=;
 b=jBqiUuXVh/JvEPipboAuXj5XTLXkZ653TgrBZRVEUYce1lqQQ1NF6ER3HLGYfAX4UB
 J68ARKFjIsdYaeyLanHA4/nYkX5rdrVqDhN7sfsACMUjAy0f6ePOLt+gEzkEV2Yr4sZ5
 YePxoooDN+WrFAdSqT628QgnmFAXltgaUaCrA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XH8HTUf+N983dtr3AIooE5hJOMY5xFR/UBpOsmUWfIc=;
 b=dtZEhJIH/y3TDwlaWL7X/RWu+RE58XrEO6xKPPpaoCIIXiWm+nViE8kck/jmqs5qtX
 gHLaj6FUFGTgd4CUVZT7sk+iCfvprnQB69ebvaYP0Jk5qecLSXn6Vl5JdQYkqBqrulgG
 qQmv4u1znPMKz4RIHbDWMQGt47JdUQzgIbP6LWLR5IN/zFz2C9aZ+eU/JMJ0ZLHr/7YP
 J49SJl87qLemOwsC8i4WeTt5azaY4OWrqCRE2HyR5k1Nx8Mv6yxLrMh02onFg3afrwof
 FqI5r6P0APuSjQaW7mhUb9qhkChIBrntANs0YCt7XoN5D1OO3MltWphyFwqJbaPVvq/M
 APrg==
X-Gm-Message-State: APjAAAWAauQilpNROUIXCQEhIu99gypIgp52LSL7+k427bE9Bx6O8nJu
 yxpuoA0tNgVIs76D5kV4nTqeCA==
X-Google-Smtp-Source: APXvYqxCJ7pjwNsD57hr7a7J+I8OTlXejrkTgzdaMEIRKxXonn5EVsjHkCo0KzWPeU7M/N12HjkftQ==
X-Received: by 2002:a1c:1b4d:: with SMTP id b74mr26180wmb.33.1582827376145;
 Thu, 27 Feb 2020 10:16:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:15 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 37/51] drm/rockchip: Drop explicit drm_mode_config_cleanup call
Date: Thu, 27 Feb 2020 19:15:08 +0100
Message-Id: <20200227181522.2711142-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_101617_979922_99513EAD 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Francesco Lavra <francescolavra.fl@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SXQncyAoYWxtb3N0LCB0aGVyZSdzIHNvbWUgaW9tbXUgc3R1ZmYgd2l0aG91dCBzaWduaWZpY2Fu
Y2UpIHJpZ2h0CmFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgoKVGhpcyBpcyBtYWRlIHBvc3NpYmxl
IGJ5IGEgcHJlY2VlZGluZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRybW1fCmNsZWFudXAgYWN0aW9u
IHRvIGRybV9tb2RlX2NvbmZpZ19pbml0KCksIGhlbmNlIGFsbCB3ZSBuZWVkIHRvIGRvIHRvCmVu
c3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKCkgaXMgcnVuIG9uIGZpbmFsIGRybV9k
ZXZpY2UKY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNvZGUgZm9yIF9pbml0KCkuCgpB
c2lkZTogQW5vdGhlciBkcml2ZXIgd2l0aCBhIGJpdCBtdWNoIGRldm1fa3phbGxvYywgd2hpY2gg
c2hvdWxkCnByb2JhYmx5IHVzZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KCnYyOiBFeHBsYWlu
IHdoeSB0aGlzIGNsZWFudXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgoKdjM6IEp1bXAgb3V0IGF0
IHRoZSByaWdodCBsYWJlbCAoRnJhbmNlc2NvKQoKQ2M6IEZyYW5jZXNjbyBMYXZyYSA8ZnJhbmNl
c2NvbGF2cmEuZmxAZ21haWwuY29tPgpDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5j
aGFydEBpZGVhc29uYm9hcmQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+
CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwg
MTIgKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmlu
ZGV4IDIwZWNiMTUwOGEyMi4uOWIyNTAyZjkyMDE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKQEAgLTEzNSw3ICsxMzUsOSBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX2RybV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAlpZiAocmV0KQogCQlnb3RvIGVy
cl9mcmVlOwogCi0JZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7CisJcmV0ID0gZHJtX21v
ZGVfY29uZmlnX2luaXQoZHJtX2Rldik7CisJaWYgKHJldCkKKwkJZ290byBlcnJfaW9tbXVfY2xl
YW51cDsKIAogCXJvY2tjaGlwX2RybV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOwogCkBAIC0x
NzMsMTIgKzE3NSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmlj
ZSAqZGV2KQogCXJvY2tjaGlwX2RybV9mYmRldl9maW5pKGRybV9kZXYpOwogZXJyX3VuYmluZF9h
bGw6CiAJY29tcG9uZW50X3VuYmluZF9hbGwoZGV2LCBkcm1fZGV2KTsKLWVycl9tb2RlX2NvbmZp
Z19jbGVhbnVwOgotCWRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOworZXJyX2lvbW11
X2NsZWFudXA6CiAJcm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIGVycl9mcmVlOgot
CWRybV9kZXYtPmRldl9wcml2YXRlID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxM
KTsKIAlkcm1fZGV2X3B1dChkcm1fZGV2KTsKIAlyZXR1cm4gcmV0OwogfQpAQCAtMTk0LDExICsx
OTMsOCBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRl
dikKIAogCWRybV9hdG9taWNfaGVscGVyX3NodXRkb3duKGRybV9kZXYpOwogCWNvbXBvbmVudF91
bmJpbmRfYWxsKGRldiwgZHJtX2Rldik7Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZHJtX2Rl
dik7CiAJcm9ja2NoaXBfaW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIAotCWRybV9kZXYtPmRldl9w
cml2YXRlID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1
dChkcm1fZGV2KTsKIH0KIAotLSAKMi4yNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
