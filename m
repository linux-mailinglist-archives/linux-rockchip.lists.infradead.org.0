Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD0F8CFDA
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 11:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pzzCQnjM59z0qd5MJfvHX2FnJNRB9f2lw9zd7C781A=; b=kTCViPuln2Jit8
	KBYea6QTtpbm3LsZLU74iICzZE2vqm+BqOVNfXUX0fiFlz9T24Z+Ob9GyV2DaPycIW+B1G/d2GKhT
	LwPXqO9jwvKjCkBSrzTDjSA/quUuvWL+YLUT4A0sunCxunx5qxM+VfjILeNQcZFwbUAdKCmLK1JBB
	kcRJq3e/Fi2urz+Ixhr3DehUpdMAPCYXgRvJtnCf2M4gw2lY/Fd6Kc7Ft4uiLVToaRUmVTyJV9HMb
	3P+uJDt6ZbwKKnjFwRe64D72owcEBAgj3yYi9cPM9zkMtnX9ITn26BcxQyPoPgnenI8W8VjEJXPZU
	i6TBYMZAoLzWyHi/3DJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpm8-0002eZ-4k; Wed, 14 Aug 2019 09:41:00 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxplz-0002dd-4u
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 09:40:52 +0000
Received: by mail-ot1-x344.google.com with SMTP id f17so45493027otq.4
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Aug 2019 02:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jckGtl9ex2oAM6Od9bGLowhmbXb63PbbMTw//zRaC+A=;
 b=lOgyX8mAslky8WoE6GE3LY+YsaP19QKoZSVkOUG0AMAhIr0Mq5P67CKCK+Z/mRTttK
 m+xv0tJ/8kXthj/u6PveUV1y89B+2OrM41kc2vMhBkYl/mmQpI9rp1xnB7FKEZUiUsPQ
 3tbTbdrGdqhE1LMhomUEtRfnt2d/ij3+rdgsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jckGtl9ex2oAM6Od9bGLowhmbXb63PbbMTw//zRaC+A=;
 b=NvqNU3xpDsBjGh74cnyK2zEfyFagYa89ksAgkkPpMreOygvcQcoYPPs/v6VYbwPM9V
 d3EPMIjbYUUhnovPkWx3+Jm/+C1eO7bk00JMrho6lyLDJ/6OKKmFrDIcF8Qztg2Mb5ep
 PX9KFqqWXC58eQSlo76GROVwBCYeoQ7DeBGHtOdHjWxxcZvI5G3E19EtueczA7jg/E07
 BQxE//BK4JvGkHEjXSn58O36CP5MYCqkww4C2ecgZ0yb7hvAE2dMyh9BEuHVAcM0lbnd
 T4UjKMURjij4XzQGLje52GCJSB3pIaTpMc8ShlMqnrH0FLVuypJozdu5K1dBYAnPseQC
 ksJQ==
X-Gm-Message-State: APjAAAUNoPWyZ9GthKK8f3jXPBMT5HNfrJzTvGwTW44MJ41gzmzKVK/w
 OaCfvbRnzYncGZ3b86o0DUgYberZLh78fEflqYr5YA==
X-Google-Smtp-Source: APXvYqz9tjPw703Dyqm7XkiiXdFMXo/xc5hRnI9tEVEgHW1XNFTNEaRdy+ujzJUimDPtzhcwty0dg0oUpTzvb6veJQE=
X-Received: by 2002:a5d:9ad6:: with SMTP id x22mr18350166ion.136.1565775649666; 
 Wed, 14 Aug 2019 02:40:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-4-jagan@amarulasolutions.com>
 <98408a3c-84bd-d54b-1b3a-49901c85ba3c@rock-chips.com>
In-Reply-To: <98408a3c-84bd-d54b-1b3a-49901c85ba3c@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 14 Aug 2019 15:10:38 +0530
Message-ID: <CAMty3ZApcHpSmLtf4kTm+YqzpYMtGSU6N_Sm_xZNue2o73UvtQ@mail.gmail.com>
Subject: Re: [PATCH 03/15] rockchip: rk3288: Print reset reason
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_024051_605735_284459EA 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wadim Egorov <w.egorov@phytec.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, U-Boot-Denx <u-boot@lists.denx.de>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA2OjAwIFBNIEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4KPiBPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NiwgSmFnYW4g
VGVraSB3cm90ZToKPiA+IFByaW50IHRoZSByZWFzb24gZm9yIHJlc2V0IGluc3RlYWQgb2Ygc3Rv
cmluZyBpdCBpbnRvCj4gPiBlbnYgdmFyaWFibGUgaW4gcmszMjg4Lgo+ID4KPiA+IFRoaXMgd291
bGQgaGVscCB0byBmaW5kIHRoZSByZXNldCByZWFzb24gZGlyZWN0bHkKPiA+IG9uIFUtQm9vdCBw
cm9wZXIgbG9ncy4KPiA+Cj4gPiBDYzogV2FkaW0gRWdvcm92IDx3LmVnb3JvdkBwaHl0ZWMuZGU+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNv
bT4KPiA+IC0tLQo+ID4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC1ib2FyZC5jIHwg
MiArLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQu
YyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4LWJvYXJkLmMKPiA+IGluZGV4IGQzZWMx
NDFmZWEuLjYxMzI2NGQ3ZWUgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlw
L3JrMzI4OC1ib2FyZC5jCj4gPiArKysgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC1i
b2FyZC5jCj4gPiBAQCAtNzIsNyArNzIsNyBAQCBzdGF0aWMgdm9pZCByazMyODhfZGV0ZWN0X3Jl
c2V0X3JlYXNvbih2b2lkKQo+ID4gICAgICAgICAgICAgICByZWFzb24gPSAidW5rbm93biByZXNl
dCI7Cj4gPiAgICAgICB9Cj4gPgo+ID4gLSAgICAgZW52X3NldCgicmVzZXRfcmVhc29uIiwgcmVh
c29uKTsKPiA+ICsgICAgIHByaW50ZigiUmVzZXQgY2F1c2U6ICVzXG4iLCByZWFzb24pOwo+Cj4K
PiBXaHkgdGhpcyBuZWVkIHRvIHNldCBhcyBlbnYgYmVmb3JlPyBJIGRpZG4ndCB0b3VjaCB0aGlz
IGNvZGUgd2hlbiBJIG1pZ3JhdGUKCkRvbid0IGtub3cgdGhlIHByb3BlciByZWFzb24gZm9yIHRo
aXMsIGllIHdoeSBJIGhhdmUgQ0NlZCBXYWRpbS4KCldhZGltLCBhbnkgY29tbWVudHM/CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
