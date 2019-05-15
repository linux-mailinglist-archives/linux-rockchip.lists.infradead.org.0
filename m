Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128B01F9F9
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJNmF9kPZOMT/mnfYNMJJHMDQZrbzDXwesQuKJksLuo=; b=KcYKhW3s6q3jIk
	Huka7qwznd4pFzat1rjUd/ldWPNbgMMXRLKSJAD17VeLTj6WZK3iNowPQJH45Wn1aKALxkU8CBpep
	tUDmiKg+CiGSx8XBrQlz9r8rV+HbZr4gv/htU5ogHbBNCvnIxEBDLGXnadMs5wit4JHBoHJoplDlO
	5tEjs5fvDuTYq0qST06gWD9Sl8MI4gDABjONXBEVSyH6pSjLYlnxaO0RBTsVcCOS7ISJcKlKCLgOO
	SAl4r45xOIVBZq1teSouXAOx05DVzyxA2l5BaJDrwaiabZweeKN0JkGNpDI+aOExfMD2dZ41L3kV9
	YyBOLHEAK1SFP6g7qnzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyfd-0003fV-J6; Wed, 15 May 2019 18:30:29 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyfb-0003eu-8s
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:30:28 +0000
Received: by mail-ua1-x944.google.com with SMTP id u4so228498uau.10
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x1GsAM8bhdilQ74FwqzJHpjAIW1mRUZnatlHpEToBDY=;
 b=QxhYWoPZ+1PlCeInJqiH5EdtHpzqJylxhCJeEIF6Jo3c2n26Xg9zJvIAjyi21FRb1E
 shfVV0sjHTkIk+XT0LuVrMEHJjAIGk1WL7tVbohxb8T16rinc4xS01nUc4/e6KTE5MTA
 PeT9fUG9BtVkJC9XKXysA0q0GuB+i28ib1IbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x1GsAM8bhdilQ74FwqzJHpjAIW1mRUZnatlHpEToBDY=;
 b=b0lh7P0aHH15Wqlm5KONTjm4odYkTw2Ndh/xk5UxYpFYAu/VrcBg66d80Io48scsoM
 0Hb+sUI+/eFOVNtKA4K8jN7EXdoeQA0z0fEkx7LrKuMTtZ2gTc5r2GXCxw6+Q3DCAe5C
 KOyjwZOC6akYKH0RBz2HqvxEhrB9bxzytE6popFE8Vbi7zLbXiUjtEDd7366XOPEcA95
 89nexj0vWpv7phycLpCkSmW5H+cSJ6Pwnrqv8P9KL+uPi2NLmkl7gkU3ape7xAu5SCaY
 Y/sUG3oNvoI2y2DW2lq9ZzfqGDuTEOy7NTJlMyFw7o9/5d1/6VdsT88o1/OXLPLkRW/p
 I5jw==
X-Gm-Message-State: APjAAAUv1oRxaZnmX/csq2z+j0G0xXDlspo89zpPo6n3j/zj1uoXbajU
 VLrNUvr4r/5dEEbYb5fbLPfaqfDuxqo=
X-Google-Smtp-Source: APXvYqxxrDyxcatB8ozrVlq5akeMcMejYjDGt0zWSs0WcXPvLNmBHK0omF1iU/IUt0OFx0KPo8edxA==
X-Received: by 2002:ab0:4d67:: with SMTP id k39mr21530193uag.59.1557945026045; 
 Wed, 15 May 2019 11:30:26 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com.
 [209.85.217.43])
 by smtp.gmail.com with ESMTPSA id r200sm1790288vkf.45.2019.05.15.11.30.24
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:30:24 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id c24so573506vsp.7
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:30:24 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr20058967vsc.20.1557945024176; 
 Wed, 15 May 2019 11:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190515153127.24626-1-mka@chromium.org>
 <20190515153127.24626-2-mka@chromium.org>
In-Reply-To: <20190515153127.24626-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:30:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
Message-ID: <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: raise GPU trip point temperature for speedy
 to 80 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_113027_312991_10E34B78 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIE1heSAxNSwgMjAxOSBhdCA4OjMxIEFNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gUmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBH
UFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBzcGVlZHkKPiB0byA4MMKwQy4gVGhpcyBpcyB0aGUg
dmFsdWUgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhl
ICdvZmZpY2lhbCcga2VybmVsIGZvciBzcGVlZHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMv
cmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5
cm9uLXNwZWVkeS5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5k
dHMKPiBpbmRleCAyYWM4NzQ4YTNhMGMuLjM5NGE5NjQ4ZmFlZSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMKPiArKysgYi9hcmNoL2FybS9i
b290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMKPiBAQCAtNjQsNiArNjQsMTAgQEAKPiAg
ICAgICAgIHRlbXBlcmF0dXJlID0gPDcwMDAwPjsKPiAgfTsKPgo+ICsmZ3B1X2FsZXJ0MCB7Cj4g
KyAgICAgICB0ZW1wZXJhdHVyZSA9IDw4MDAwMD47Cj4gK307Cj4gKwo+ICAmZWRwIHsKClNpbWls
YXIgY29tbWVudHMgdG8gcGF0Y2ggc2V0ICMxIGFib3V0IHNvcnQgb3JkZXJpbmcuCgouLi5JJ2xs
IGFsc28gbm90aWNlIHRoYXQgaWYgd2UgZG8gZW5kIHVwIHNldHRpbmcgdGhlICJjcml0aWNhbCIg
dG8gMTAwCkMgZm9yIG1vc3Qgb2YgdmV5cm9uIHRoZW4gSSBndWVzcyB3ZSdsbCBoYXZlIHRvIHN3
aXRjaCBpdCBiYWNrIHRvIDkwIEMKaGVyZSBmb3Igc3BlZWR5IHRvIG1hdGNoIGRvd25zdHJlYW0/
ICBNYXliZSB0aGF0J3MgYW4gYXJndW1lbnQgZm9yCmRvaW5nIGl0IGluIHRoaXMgcGF0Y2hzZXQg
c28gd2UgZG9uJ3QgZm9yZ2V0PyAgSSdtIHNvbWV3aGF0IGFtYXplZAp0aGF0IGRvd25zdHJlYW0g
aGFzIG9ubHkgMTAgQyBiZXR3ZWVuICJhbGVydCIgYW5kICdjcml0aWNhbCIgZm9yIEdQVQpmb3Ig
c3BlZWR5LCBidXQgSSBndWVzcyBpdCdzIE9LPwoKLURvdWcKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
