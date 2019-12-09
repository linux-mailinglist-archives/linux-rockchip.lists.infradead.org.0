Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D68117BED
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 00:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s07vjhD5hIy86HEpJi0BQ48glduiR0nIKXDkJ8kqvw4=; b=l62E+b3NkOibTr
	FkbJBVmLPitTXE2CRYkh9W906Z0LJ6vHFkwlVZ0PgP54lVhuPlVxC7lN3IC4kOuB76j06dl5k4mNf
	IuWekObTcZHjU8MTXCE0oFW2PiMcA6jncWUGzo/lLhIxbyDa4T+yZ4NquQC8MwJg8D9v031I6IHax
	GidohcGHc/6o/6584YMkmVRtJLr88RBsjpGXspLDt1LZ5FtN2HynI3ML4JHQ0KbzMvy5OoKWDyHki
	3fTWjaXeHodV2wyTiMtazN0912F2BRHW++skf0V4JCTxs55zXeK0++29NjYHgoltNaUBKZdb1JFJ6
	P6HBuUMIcNu5ufMsovKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieStF-0006gL-Vu; Mon, 09 Dec 2019 23:56:33 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieStC-0006fD-Ph
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 23:56:32 +0000
Received: by mail-io1-xd2e.google.com with SMTP id a22so1851061ios.3
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2019 15:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5xRbxJUmG9u2zPKNV0wb+TxQmojaTwS4/EUMaO1UzD8=;
 b=LuuGud3C8MCUTplOzoRNjf6hnez96tj0dG4LkB1JiT+45E0dlfoc/Fa7iF+PjC4Uy5
 NmAE2JgXiJun6pokQ6AwQ90fW2d3nZM7T3W3cyj5PdRI4AlFeum1nUfoCtSElJ4re5sg
 1bv6ZUnssIZzuSRcUlTm1qjm1CfjHNoiTz0ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5xRbxJUmG9u2zPKNV0wb+TxQmojaTwS4/EUMaO1UzD8=;
 b=f3J2+dmBJG9jWmyFA3/AlgaWd5fWLE2rJxCfN4Ii1z5jpSBTxeSU6vqhludtOAIXsN
 NUo6Unn6ktX2/kHpf77C9Tw5wRYSByUYYNFzmBq64NRRs7cgKEVaZ0/R8jLJnNk9h5Ty
 Jpc5eP0LDdqFrusBggf1JWGQV3zk1qnco4OthDE6WZZvwZMv3BO/Q6vwACkWE8oDNiJh
 w1na1qQ7oDDIfcGCHx8dJOmnlNEQbYKJWwd6LwnXvv9dvkINkIRwzMIjAjmJ+TTccm5S
 9ghlwiPl4CWJNYEUrIFpEtYFKiy7jxkU8jYgECUM0PybfQ8inRKhpLtQ1ak8u3ivNjOS
 tWqQ==
X-Gm-Message-State: APjAAAVTxrF/0wVONn0c91YgwDuGazKABIA4r10m3sc5M9YcbtDt/RuN
 TKpKh9uSjt+D15Vuksa8LPYdASRqngA=
X-Google-Smtp-Source: APXvYqyQqPmRniJ9YtjY2MwDK21UHf7tKoN/lwXnx4yvQMfKNueqXwJFTlOl1bXDqYW/BM8pkW3M2w==
X-Received: by 2002:a6b:fa0e:: with SMTP id p14mr22484735ioh.10.1575935788128; 
 Mon, 09 Dec 2019 15:56:28 -0800 (PST)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id r2sm309343ila.42.2019.12.09.15.56.26
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 15:56:27 -0800 (PST)
Received: by mail-il1-f170.google.com with SMTP id w13so14473665ilo.1
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2019 15:56:26 -0800 (PST)
X-Received: by 2002:a92:1547:: with SMTP id v68mr29151553ilk.58.1575935786525; 
 Mon, 09 Dec 2019 15:56:26 -0800 (PST)
MIME-Version: 1.0
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
 <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
 <1788857.Va9C3Z3akr@diego>
In-Reply-To: <1788857.Va9C3Z3akr@diego>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 9 Dec 2019 15:56:14 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xdrw1FC=DktQ8HjdEJcCKvdA3sx78gg-rn8=bBq=WrEw@mail.gmail.com>
Message-ID: <CAD=FV=Xdrw1FC=DktQ8HjdEJcCKvdA3sx78gg-rn8=bBq=WrEw@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_155630_828018_1C1A19B8 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Marcel Holtmann <marcel@holtmann.org>, LKML <linux-kernel@vger.kernel.org>,
 BlueZ <linux-bluetooth@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIERlYyA4LCAyMDE5IGF0IDQ6MDMgUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtv
QHNudGVjaC5kZT4gd3JvdGU6Cj4KPiBBbSBNb250YWcsIDkuIERlemVtYmVyIDIwMTksIDAwOjQ4
OjMxIENFVCBzY2hyaWViIE1hcmNlbCBIb2x0bWFubjoKPiA+ID4gVGhpcyBlbmFibGVzIHRoZSBC
cm9hZGNvbSB1YXJ0IGJsdWV0b290aCBkcml2ZXIgb24gdWFydDAgYW5kIGdpdmVzIGl0Cj4gPiA+
IG93bmVyc2hpcCBvZiBpdHMgZ3Bpb3MuIEluIG9yZGVyIHRvIHVzZSB0aGlzLCB5b3UgbXVzdCBl
bmFibGUgdGhlCj4gPiA+IGZvbGxvd2luZyBrY29uZmlnIG9wdGlvbnM6Cj4gPiA+IC0gQ09ORklH
X0JUX0hDSVVBUlRfQkNNCj4gPiA+IC0gQ09ORklHX1NFUklBTF9ERVYKPiA+ID4KPiA+ID4gVGhp
cyBpcyBhcHBsaWNhYmxlIHRvIHJrMzI4OC12ZXlyb24gc2VyaWVzIGJvYXJkcyB0aGF0IHVzZSB0
aGUgYmNtNDM1NDAKPiA+ID4gd2lmaStidCBjaGlwcy4KPiA+ID4KPiA+ID4gQXMgcGFydCBvZiB0
aGlzIGNoYW5nZSwgYWxzbyByZWZhY3RvciB0aGUgcGluY3RybCBhY3Jvc3MgdGhlIHZhcmlvdXMK
PiA+ID4gYm9hcmRzLiBBbGwgdGhlIGJvYXJkcyB1c2luZyBicm9hZGNvbSBibHVldG9vdGggc2hv
dWxkbid0IHRvdWNoIHRoZQo+ID4gPiBidF9kZXZfd2FrZSBwaW4uCj4gPgo+ID4gc28gaGF2ZSB0
aGVzZSBjaGFuZ2VzIGJlaW5nIG1lcmdlZD8KPgo+IG5vdCB5ZXQKPgo+IERvdWcgd2FudGVkIHRv
IGdpdmUgYSBSZXZpZXdlZC1ieSwgb25jZSB0aGUgdW5kZXJseWluZyBibHVldG9vdGgKPiBjaGFu
Z2VzIGdvdCBtZXJnZWQgLSBub3Qgc3VyZSB3aGF0IHRoZSBzdGF0dXMgaXMgdGhvdWdoLgoKSSBo
YXZlIGJlZW4gb3V0IGZvciB0aGUgbGFzdCB3ZWVrIGFuZCBhbSBhIGJpdCBiYWNrbG9nZ2VkLgoK
SSBub3RpY2UgdGhhdCB0aGlzIGxhbmRlZCBpbiBvdXIgNC4xOSBrZXJuZWwgd2l0aCArTWF0dGhp
YXMncwpSZXZpZXdlZC1ieSBhdCA8aHR0cHM6Ly9jcnJldi5jb20vYy8xNzcyMjYxPi4gIEkgZG9u
J3QgZmVlbCBhbnkgbmVlZAp0byByZS1yZXZpZXcgdGhpcyBteXNlbGYgaWYgTWF0dGhpYXMgaGFz
IHRha2VuIGEgZmluYWwgbG9vayBvbiBpdCwgc28KdW5sZXNzIGhlIGtub3dzIGEgcmVhc29uIHdo
eSBpdCBzaG91bGRuJ3QgbGFuZCB0aGVuIEknZCBzYXkgZ28gYWhlYWQKYW5kIGxhbmQgaXQuCgot
RG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
