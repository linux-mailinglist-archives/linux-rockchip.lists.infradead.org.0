Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AFD1BADB9
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 21:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0AdfmdnT9KbzJqgRGTggag5FcZhJ9TJGDoNKl2K5m4=; b=s5bGuy770Cd3WQ
	dvB1Xucabu2WpzPAOjF5z2OEgfzwvqEZfkRws/sK4fzN88g0P/TAE8sV6zJAYHV9ghl70lVHa/qxT
	9dtml2Ox1UdrW9GBtVzBJcjLb5k5F5qR5sm5m/ynrEVJNBRYZ4fMX39hBkGwLbnPs8zvjNGzgp+s4
	5empgXcSRdy5m7hvz5muSJfyyEqT5UZQ8XvsSmqqfnxrEJDNwjQqvmliordtJjQLRDodp4u4h9BGi
	sZpGjUjP+mLyxWzCnUObBYRw0BoRi2jA/qo0O6qQVmJTcAb/q0/QWnICD+UO5/nQYm4xCMGrk9nE6
	7kHKNVKEzbtrl4wt8B3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9Hh-0008TN-K4; Mon, 27 Apr 2020 19:19:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9HE-00080z-Fv; Mon, 27 Apr 2020 19:18:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9H6-0008PW-LV; Mon, 27 Apr 2020 21:18:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] drm/rockchip: cdn-dp-core: Make
 cdn_dp_core_suspend/resume static
Date: Mon, 27 Apr 2020 21:18:37 +0200
Message-Id: <158801509401.47920.2598441742545466292.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200426161653.7710-1-enric.balletbo@collabora.com>
References: <20200426161653.7710-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_121848_524333_679302A8 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU3VuLCAyNiBBcHIgMjAyMCAxODoxNjo1MyArMDIwMCwgRW5yaWMgQmFsbGV0Ym8gaSBTZXJy
YSB3cm90ZToKPiBUaGlzIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZyBkZXRlY3RlZCB3aGVu
IHJ1bm5pbmcgbWFrZSB3aXRoIFc9MQo+IAo+ICAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
L2Nkbi1kcC1jb3JlLmM6MTExMjo1OiB3YXJuaW5nOiBubyBwcmV2aW91cwo+ICAgICBwcm90b3R5
cGUgZm9yIOKAmGNkbl9kcF9zdXNwZW5k4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KPiAKPiAg
ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwLy9jZG4tZHAtY29yZS5jOjExMjY6NTogd2Fybmlu
Zzogbm8gcHJldmlvdXMKPiAgICAgcHJvdG90eXBlIGZvciDigJhjZG5fZHBfcmVzdW1l4oCZIFst
V21pc3NpbmctcHJvdG90eXBlc10KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0g
ZHJtL3JvY2tjaGlwOiBjZG4tZHAtY29yZTogTWFrZSBjZG5fZHBfY29yZV9zdXNwZW5kL3Jlc3Vt
ZSBzdGF0aWMKICAgICAgY29tbWl0OiA3YzQ5YWJiNGMyZjg4NTM1MjBhYmMwNWI3ZjdlOGI3NTFm
YmIzMDg2CgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
