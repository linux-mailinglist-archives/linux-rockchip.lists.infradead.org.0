Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EBF11E930
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 18:27:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Go4FiqrMD4jHx8Ob1wUg1xnZSVnJQeZkV/AtzS+peQY=; b=UhdDvWmm72pDdC
	D/Q6HaeJMqLADW23i04i5sZpKQ7MShikc4JuV+HLsGsxUWFomBtuDhVpudhcnQX2GLTooatYCuoDr
	40LsBbZHSsVCJfZpiHrGIrYKrWt1+WIBCs8XTbmj1gmm43NZgbqjDdTF2ir+2iCbA9yyQcVZg3XDa
	3NR6nI82I/5YLjehyuAq6Mm82rkqzRHZ31ZFiVkwHWnEcvKvnp0VhVHyhpSudFNJ/sjBEbnV6XJzM
	tUsnFLvEyDhb2FxowWlDgt+dFs3F4rJ1YSfLXuQvaPpgsBG4AvHrSqk1uQO/3r1HhGvQ9UQrQ9aD5
	9b7LG6sORVwMbxlX32Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifoip-0006Q7-GC; Fri, 13 Dec 2019 17:27:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifoht-0005YI-J1
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 17:26:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so281531wru.4
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Dec 2019 09:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gBZaJnQ4T1pfuiYbNCV33pBAl/MiKps57aCdhCCq5GA=;
 b=SgCyprn+TJhfzJrAyOElFygAGYPjDOq49M6+F+et6rfEOdkuMx54OxKa1htCbgaOvN
 XHYlumbXc2snqLMJhb/p1vhbxd2+u7uERrXewvnV9bJZZAN1XYVqQ3i95Lj/8ZnI1QbX
 wBlGUBqXY5npseRH3RKCUbJy/msPwKjx28JhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gBZaJnQ4T1pfuiYbNCV33pBAl/MiKps57aCdhCCq5GA=;
 b=CQJdHULeivb8XoL6k/Ieo+zY/DPrgVFhDj41P3a1fTrKVwsaUeSenKcCUiO3t9GuM8
 BfFCbJloYe5+c9wKyZhIDmgsBwJdzWX5vMSO8HIbmRfvkTrfFF/x4PwMIdk6sv/ArgMO
 rn/V6PqndLPauSwNx3lca7+Yb0SRd1caFIb1InjxVmkOj5rRdduy0E+rhU8/fU9AUy/t
 tKXieEKqVJowNw5Hxi31YjRs6P3oqY2rH0knZxkp3ApXcUzweiiTRejDzRVEgiE4x6oE
 lKsNqTmiJcVqOMAMke8icDS/8hyaZ1fmUIlA0F5dRhb0BX8KYpp7pwKYGmiKYuwAGWVS
 fqOw==
X-Gm-Message-State: APjAAAUDqyQPyC+X0cpvHgFYKpHo7lVLRacdXkKXZ2+pBwYkDU42x+7s
 nNWtUD6gN+I5s32aT4AJYQBy5w==
X-Google-Smtp-Source: APXvYqySnMsLeoZE9VQ1vmqK71rJv5VV+5cxXaKC6Jepc5ChVNTPeNt0FFqW4uks4ZmZYYpHvNA/fQ==
X-Received: by 2002:adf:e609:: with SMTP id p9mr13492290wrm.397.1576257984206; 
 Fri, 13 Dec 2019 09:26:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id q15sm10689669wrr.11.2019.12.13.09.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 09:26:23 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 06/10] drm/xrockchip: plane_state->fb iff plane_state->crtc
Date: Fri, 13 Dec 2019 18:26:08 +0100
Message-Id: <20191213172612.1514842-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_092625_623774_3B6502D0 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Q2hlY2tpbmcgYm90aCBpcyBvbmUgdG9vIG11Y2gsIHNvIHdyYXAgYSBXQVJOX09OIGFyb3VuZCBp
dCB0byBzdG9wZQp0aGUgY29weXBhc3RhLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMu
Y29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IGQwNGIz
NDkyYmRhYy4uY2VjYjJjYzc4MWY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMKQEAgLTcyNCw3ICs3MjQsNyBAQCBzdGF0aWMgaW50IHZvcF9wbGFuZV9h
dG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJaW50IG1heF9zY2FsZSA9IHdp
bi0+cGh5LT5zY2wgPyBGUkFDXzE2XzE2KDgsIDEpIDoKIAkJCQkJRFJNX1BMQU5FX0hFTFBFUl9O
T19TQ0FMSU5HOwogCi0JaWYgKCFjcnRjIHx8ICFmYikKKwlpZiAoIWNydGMgfHwgV0FSTl9PTigh
ZmIpKQogCQlyZXR1cm4gMDsKIAogCWNydGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9leGlzdGlu
Z19jcnRjX3N0YXRlKHN0YXRlLT5zdGF0ZSwgY3J0Yyk7Ci0tIAoyLjI0LjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
