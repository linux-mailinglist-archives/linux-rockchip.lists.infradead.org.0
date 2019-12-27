Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EC412B21B
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 07:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ha3pKjrT/ibcgt/yBxIOrMtcviTHAKOuZslojpppL9E=; b=YN7CjeVIxPCAA+
	GpB61E8O61zq8GJvJdZJTDwGKRU1CdMvrjr9hUDADByGW/Hhc0IOOhrB42DWONj4LqieKma2Hp8qZ
	+CUBeeUvyhK12mF9rO2fkWwTeBBA2qGJ5/SrSFUdpzwwo6+isP9YKxQS9JSJyp0H1NPOXs8qVOuGr
	CVb8aXAwUho5HZA2kQVH0udWQIXL+7iurEXIkqvNdXDyiUdeBP6QjCsC79cXUG0WwR/oUExzQ1GDD
	O36B2GmhJ7CG6ZleQ+N3fLHZ6A2350sL+Srzj3lr33sHsQEvrIji6eYDOqtiVjyEIEb97h/ScElIg
	JcQFRpa6NtC71QvRQlew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjSK-0005cx-9f; Fri, 27 Dec 2019 06:50:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikjSG-0005cI-Fr
 for linux-rockchip@lists.infradead.org; Fri, 27 Dec 2019 06:50:38 +0000
Received: by mail-io1-xd43.google.com with SMTP id n11so18301637iom.9
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Dec 2019 22:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GgbeL53qDWAKQfN7yOSVP5wqGbbM18WYGubAgKdM+Iw=;
 b=mxj04BxKxdom+k/cRio3b2SD2+dl9frS/S/Vk3pEeHdlrABF0EGUT1qKtbMl62Iyxs
 Jl3cJiqfo90mjP6gT9C2bEYCEUmZB7utkpIgKkyT/NwuZQlQVshJ4Jn6jCPWWld6Tidx
 6Tv2wbGXIGtR4/eihfw8cniqa9DwpXLA1DQfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GgbeL53qDWAKQfN7yOSVP5wqGbbM18WYGubAgKdM+Iw=;
 b=QllBzGkd8jrKLK1OVULgAQFUukKiJ3KTudNqlyNfvq9qYGOK+exZRY+iIe7Z6xQt38
 tDKsrSfEbdYzNJfNxVI0J7wjxHKGqxVnUKjir1JE8KBW2jMHyxMq0mDkneNYlgB2aymH
 YFE6lZJ1KewuVPMUPRPKh8Hg3xY1F8sq3YsU07IA7JdrkQU6mN17C4EOSY15pgVGCH6J
 4RTXEOEmz0jESdRwnb/4k64mMdJKdNpY00/YWdMOaUqumN4ockIG21xBRTZzoEPGNjwg
 CSbD6CiVBlwdYoNQsczV8WBRTI81xGuS+LJ7ZgUPHUdt83IPnFskIwA8efgiGlTPJCu2
 z3qw==
X-Gm-Message-State: APjAAAVmuqbgBwqb3CrHTu5AuOLhgg5FrtyCyTtvsICScwiO5B5a9a6E
 0PiWneH8M3TnV4CleCEnnkBTMBob+o3cy4eGBMzCLw==
X-Google-Smtp-Source: APXvYqw0MCR8ue4N1ndUTekP/Qv2ap2fVY6ZqGzkNhT8LZWK+jJRdZSWVYaeCmWkJ2hn7V+OFA3RenmZOAWRKxgmyrw=
X-Received: by 2002:a5e:8b06:: with SMTP id g6mr32127566iok.61.1577429435298; 
 Thu, 26 Dec 2019 22:50:35 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
In-Reply-To: <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 27 Dec 2019 12:20:24 +0530
Message-ID: <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_225036_962454_7F936F82 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpPbiBNb24sIERlYyAyMywgMjAxOSBhdCA4OjA0IEFNIEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSmFnYW4sCj4KPgo+IE9uIDIwMTkv
MTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiA+IE1vc3Qgb2YgdGhlIFNQSSBm
bGFzaCBkZXZpY2VzIGluIHJvY2tjaGlwIGFyZSAxNk1pQiBzaXplLgo+ID4KPiA+IFNvLCBrZWVw
aW5nIFUtQm9vdCBwcm9wZXIgb2Zmc2V0IHN0YXJ0IGZyb20gMTI4TWlCIHdpdGggMU1pQgo+ID4g
c2l6ZSBhbmQgdGhlbiBzdGFydCBlbnYgb2YgOEtpQiB3b3VsZCBiZSBhIGNvbXBhdGlibGUgbG9j
YXRpb24KPiA+IGJldHdlZW4gYWxsIHZhcmlhbnRzIG9mIGZsYXNoIHNpemVzLgo+ID4KPiA+IFRo
aXMgcGF0Y2ggYWRkIGVudiBzdGFydCBmcm9tIDB4MTQwMDAgd2l0aCBhIHNpemUgb2YgOEtpQi4K
Pgo+IFdoYXQncyB0aGUgc3BhY2UgbWFwIGluIFNQSSBmbGFzaCBzdXBwb3NlIHRvIGJlPyBJbmNs
dWRpbmcKPiB0cGwvc3BsL3UtYm9vdC5pdGIKPgo+IEkgd291bGQgcHJlZmVyIHRvIHVzZSAxMjhL
aUItOEtpQiBhcyB0aGUgZW52IHN0YXJ0IGFkZHJlc3MsIHdlJ2QgYmV0dGVyCj4gdG8gYXZvaWQg
dGhlCj4KPiByaXNrIG9mIG92ZXJsYXAgYmV0d2VlbiB0aGUgZW52IHNwYWNlIGFuZCB0aGUgZmly
bXdhcmUgc3BhY2UuCgpIZXJlIGlzIHRoZSAxNk1pQiBmbGFzaCBsYXlvdXQsIEkgaGF2ZSB1c2Vk
LiBJIGNhbiBzZWUgdGhlIGxvYWRlcjEKKHRwbC9zcGwpIGNhbiBiZSBwb3NzaWJsZSB0byBsb2Fk
IGF0IDB4MCBvciAweDMySyBzbyBJIGhhdmUgZ2l2ZW4gdGhlCnNwYWNlIGZvciBpdC4gYW5kIDhL
IGVudiBhZnRlciBsb2FkZXIyKHUtYm9vdCkuIGxldCBtZSBrbm93IHlvdXIKdGhvdWdodHM/Cgog
ICAgICAgICAgMHgwIC0gMHg4MDAwLCAgICAgICAzMksgID0+ICByZXNlcnZlZC9sb2FkZXIxCiAg
ICAweDgwMDAgLSAweDQwMDAwLCAgICAyMjRLID0+ICBsb2FkZXIxCiAgMHg0MDAwMCAtIDB4MTQw
MDAwLCAgICAxTSAgPT4gIGxvYWRlcjIKMHgxNDAwMDAgLSAweDE0MjAwMCwgICAgOEsgID0+ICAg
ZW52CjB4MTQyMDAwIC0gMHg4NDIwMDAsICAgIDdNICA9PiAga2VybmVsCjB4ODQyMDAwIC0gMHg4
NTM4MDAsICAxMDBLID0+ICBkdGIKMHg4NTM4MDAgLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPT4gIHJvb3QKCkphZ2FuLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
