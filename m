Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A9018F76C
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Mar 2020 15:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHnHVzmsz+3CvuTne0SA87USkY+Oz1BJkAkzGWUEtVw=; b=UMsvn2j8mxX1tU
	YM8iQxNr+cxGJKj6WkgkQjW4PHGP/o50lOvOfQ/0lN7DXPj/6uAb6kqKtvhU58+ia4yudo1UzlgE9
	oX7DxaetsD8dC/GAp7mdbkXVlsroFT27ZP03ceAIMky/iVFWfO+5qACCcYENRSORsdItIMEjJ8RTC
	lZNTmkG6fkluvO9aViLVR4Tky592K+jUedhCUhla5gz0HGNpSbz49k1eHOde/XQl4SwluDnAgL+b5
	54AomulAiJprv0/hLE/S9NsxWpSm4OL1TMzfF9aYpYqMUmalsvkTBks7I4J6d6OwDkZOtM8wpND0S
	JOtGmJm3KhxXz0+cMZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOPz-000331-N6; Mon, 23 Mar 2020 14:51:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOPi-0002s6-Ry
 for linux-rockchip@lists.infradead.org; Mon, 23 Mar 2020 14:50:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id c81so4539095wmd.4
 for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2020 07:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1JCoenPslol75s1mwKYdO0GZN9e4Jdsynr67HpA/NhM=;
 b=M4Twmz44U44lVNMnwYgqP2gQ0TGx5tYk+qytMLBkFzUEICdBVGBZbGpBSC2XNsQrZN
 WfPn3FqbxyUt3+ZGV0kc+gN0a9bYCCSrCdRbMZSnCB0J2OmP2P29t75A9TIW46fYN2qG
 dEjH0nXCrABKIkP+3CinCbvSvEd5i0cuB+K3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1JCoenPslol75s1mwKYdO0GZN9e4Jdsynr67HpA/NhM=;
 b=gBMkookvMG6WeOEqNVfREkhod/3+TIMFDkuuqdKAdKAafAaH+vOLoK4edX4Ycdgi3t
 RhrMqJeF9JlnlTFSrgQSd9W6t6ra5E9XGh/KDdFbBAUBykKwgSIKKC3Sq5IEFW4d/4oD
 4kPhp8PqwT4IIjpuXeTdKjNecbhEMIKTF5TGykeUuEu00qMd3hK1c5bTm4g++0eciEhF
 L1a4MX2klTELtijZjmeSEixRX+pBp3LQTGNk8D9AwyhOUHqHQsYFxN8MWL6JNPB8R3ES
 hpiR7rRXsVsP560g6ZdyPMcRbCK8L0GAJEimoPqPXRaQARUgfOYRxVH1nb1aqmC+mEnx
 RhAQ==
X-Gm-Message-State: ANhLgQ21ph5azszboS/Ultuvck43qxtZ8wCPQFI3vikc2cB+KYyRmv3D
 Z2RdPtBib+et7uZ2q5DjxPnc+A==
X-Google-Smtp-Source: ADFU+vt6UD0sIJ4p1KGfRPTnfOQAVI2yGhyIDGEb0Jkzi+wNUZhE6eYX0CXu28fbIM4NDQ77SQzQpg==
X-Received: by 2002:a7b:c8cd:: with SMTP id f13mr14363531wml.138.1584975049565; 
 Mon, 23 Mar 2020 07:50:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 37/51] drm/rockchip: Drop explicit drm_mode_config_cleanup call
Date: Mon, 23 Mar 2020 15:49:36 +0100
Message-Id: <20200323144950.3018436-38-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075050_955380_F2125072 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
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
IHRoZSByaWdodCBsYWJlbCAoRnJhbmNlc2NvKQoKdjQ6IFRyeSBhZ2Fpbiwga2J1aWxkIGNhdWdo
dCB0aGF0IEkgZGlkbid0IGJ1aWxkIHRlc3QgdGhpcyBwcm9wZXJseQouLi4KCnY1OiBVc2UgZHJt
bV9tb2RlX2NvbmZpZ19pbml0KCkgZm9yIG1vcmUgY2xhcml0eSAoU2FtLCBUaG9tYXMpCgpBY2tl
ZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpDYzogU2FtIFJhdm5ib3JnIDxz
YW1AcmF2bmJvcmcub3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+CkNjOiBGcmFuY2VzY28gTGF2cmEgPGZyYW5jZXNjb2xhdnJhLmZsQGdtYWlsLmNvbT4KQ2M6
IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBT
YW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVp
a29Ac250ZWNoLmRlPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNj
OiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDE0ICsrKysrLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmluZGV4IDIwZWNiMTUwOGEyMi4uMGYzZWIz
OTJmZTM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMK
QEAgLTEzNSwxNCArMTM1LDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0
IGRldmljZSAqZGV2KQogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKLQlkcm1fbW9kZV9j
b25maWdfaW5pdChkcm1fZGV2KTsKKwlyZXQgPSBkcm1tX21vZGVfY29uZmlnX2luaXQoZHJtX2Rl
dik7CisJaWYgKHJldCkKKwkJZ290byBlcnJfaW9tbXVfY2xlYW51cDsKIAogCXJvY2tjaGlwX2Ry
bV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOwogCiAJLyogVHJ5IHRvIGJpbmQgYWxsIHN1YiBk
cml2ZXJzLiAqLwogCXJldCA9IGNvbXBvbmVudF9iaW5kX2FsbChkZXYsIGRybV9kZXYpOwogCWlm
IChyZXQpCi0JCWdvdG8gZXJyX21vZGVfY29uZmlnX2NsZWFudXA7CisJCWdvdG8gZXJyX2lvbW11
X2NsZWFudXA7CiAKIAlyZXQgPSBkcm1fdmJsYW5rX2luaXQoZHJtX2RldiwgZHJtX2Rldi0+bW9k
ZV9jb25maWcubnVtX2NydGMpOwogCWlmIChyZXQpCkBAIC0xNzMsMTIgKzE3NSw5IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmljZSAqZGV2KQogCXJvY2tjaGlwX2Ry
bV9mYmRldl9maW5pKGRybV9kZXYpOwogZXJyX3VuYmluZF9hbGw6CiAJY29tcG9uZW50X3VuYmlu
ZF9hbGwoZGV2LCBkcm1fZGV2KTsKLWVycl9tb2RlX2NvbmZpZ19jbGVhbnVwOgotCWRybV9tb2Rl
X2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOworZXJyX2lvbW11X2NsZWFudXA6CiAJcm9ja2NoaXBf
aW9tbXVfY2xlYW51cChkcm1fZGV2KTsKIGVycl9mcmVlOgotCWRybV9kZXYtPmRldl9wcml2YXRl
ID0gTlVMTDsKLQlkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1dChkcm1f
ZGV2KTsKIAlyZXR1cm4gcmV0OwogfQpAQCAtMTk0LDExICsxOTMsOCBAQCBzdGF0aWMgdm9pZCBy
b2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAogCWRybV9hdG9taWNfaGVs
cGVyX3NodXRkb3duKGRybV9kZXYpOwogCWNvbXBvbmVudF91bmJpbmRfYWxsKGRldiwgZHJtX2Rl
dik7Ci0JZHJtX21vZGVfY29uZmlnX2NsZWFudXAoZHJtX2Rldik7CiAJcm9ja2NoaXBfaW9tbXVf
Y2xlYW51cChkcm1fZGV2KTsKIAotCWRybV9kZXYtPmRldl9wcml2YXRlID0gTlVMTDsKLQlkZXZf
c2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKIAlkcm1fZGV2X3B1dChkcm1fZGV2KTsKIH0KIAotLSAK
Mi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
