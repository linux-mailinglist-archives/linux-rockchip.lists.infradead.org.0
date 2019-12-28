Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2113E12BD84
	for <lists+linux-rockchip@lfdr.de>; Sat, 28 Dec 2019 13:08:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/rWw36+SAwdkMkrh1zSQ9lDCET0BT1Q9wdB5GHdxgg=; b=sE1u3mjneXN9sY
	l9ZcldPqvkEqU+pledS3WLdL2+G3wXmC88YTRE2d1dfRNsxjaQsqdOv1pfLR0GQMZgafzFI/ZG2Qs
	H7oUyztWs0Wa4MJ7UeH2DIj5sogSsvtHCZ3qVB80PaGMsOF3LS4GDauNYZqINcKVchYiPvTyUURxw
	VeHOlH1v6lEqUTUOcFC1z4KeSMvCkHe0BbaeqqHiTWnektz5qA2nQm/b8BVj4b8UeSQiuwwHbt3ya
	QRM4PhFplYXRwXKw8rlzN9y+xx61JdT9JCJ0tE02jUMEAdXWzJLdfRWO1BCsZQwfeuDrTLv3i2wGD
	x3QRbcc4rEphaXjHbuyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilAtP-0000jk-3P; Sat, 28 Dec 2019 12:08:27 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilAtK-0000jA-Rm
 for linux-rockchip@lists.infradead.org; Sat, 28 Dec 2019 12:08:25 +0000
Received: by mail-io1-xd43.google.com with SMTP id z193so27814496iof.1
 for <linux-rockchip@lists.infradead.org>; Sat, 28 Dec 2019 04:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RZjBG1ydbYrUebD8gOyX/bJ8CILLyBAnR4JzYt88Ypg=;
 b=LJRt9xvIlpe7+env9gkgGa7oedrqu5zbhRDLw9r0kNGOg1Fq4hO99FUm+l9sPbeC+u
 WcN3u31nV02KCjAI0ysc2eBYk/XJ8s+/wWtzQItRUeoMIcbyHNYVLZduYPedlaTehfIm
 gFD5JH7texch7FPbtPIGAqUHEsa+dl7fnkS6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RZjBG1ydbYrUebD8gOyX/bJ8CILLyBAnR4JzYt88Ypg=;
 b=CxxhyKukmPHXJIdK/WnHSdLrJ8S5QeXDuJiPK0Py0Y+bKIUwf6UBUYyLF+qcyZqXkx
 ql0OtwWDNTGHptgkRwLO6/W58vVylpq9sRXlFP3Kd323fLT+fo+K5RjkN93eWpTfH/+o
 h2ZbEbQtuYcyFQJY9QpTQB2ckkM2jDQXlh9GTMav/zZcuMqbMZ0UooEaaRS5M2BbTGiw
 s6m0Ia74XyV6v0plZRZtb5eTljAkiXGjEwDNYxyRL2K4rzfZHuspHwVjrdYx1PuBgpys
 kK0f4q9vAy7zBVpxRUvmnuUDVpNk6TnJQixY4co0gS+EHWjs1SrSMxTWuDe1Dq3v/fpD
 Z8vQ==
X-Gm-Message-State: APjAAAWfmBxpAiIrGdkaSbAPiT3mnd1qCPRl/LqSELhjx/GUdqIdHz9q
 0GrpVEESJHx2GhTyMOE+lC/wpI8Bw5fWNNcjOHdJvQ==
X-Google-Smtp-Source: APXvYqxSG1iu4LwQ+9BWhSzqWlg8nST18wcCKwIZwQn+CAkQzzL8CXMlmLjTVaxLoAMnqmNlKZWkjAefKFFzh2bt2ls=
X-Received: by 2002:a6b:3786:: with SMTP id e128mr39536365ioa.77.1577534901074; 
 Sat, 28 Dec 2019 04:08:21 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
 <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
 <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
 <30fdf54b-0f71-ffbf-ac57-51050a29b56d@web.de>
In-Reply-To: <30fdf54b-0f71-ffbf-ac57-51050a29b56d@web.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 28 Dec 2019 17:38:09 +0530
Message-ID: <CAMty3ZB0B+6ou9=DB-LP0q3R-6Gt_rRrx6b5KLjYNUKeOV_BNQ@mail.gmail.com>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Soeren Moch <smoch@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_040823_332796_4974B611 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMjcsIDIwMTkgYXQgNjo0OSBQTSBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRl
PiB3cm90ZToKPgo+Cj4KPiBPbiAyNy4xMi4xOSAxMzowNCwgSmFnYW4gVGVraSB3cm90ZToKPiA+
IE9uIEZyaSwgRGVjIDI3LCAyMDE5IGF0IDQ6MDAgUE0gU29lcmVuIE1vY2ggPHNtb2NoQHdlYi5k
ZT4gd3JvdGU6Cj4gPj4gSGkhCj4gPj4KPiA+PiBPbiAyNy4xMi4xOSAwNzo1MCwgSmFnYW4gVGVr
aSB3cm90ZToKPiA+Pj4gSGkgS2V2ZXIsCj4gPj4+Cj4gPj4+IE9uIE1vbiwgRGVjIDIzLCAyMDE5
IGF0IDg6MDQgQU0gS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6
Cj4gPj4+PiBKYWdhbiwKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gT24gMjAxOS8xMi8yMSDkuIvljYgz
OjU0LCBKYWdhbiBUZWtpIHdyb3RlOgo+ID4+Pj4+IE1vc3Qgb2YgdGhlIFNQSSBmbGFzaCBkZXZp
Y2VzIGluIHJvY2tjaGlwIGFyZSAxNk1pQiBzaXplLgo+ID4+Pj4+Cj4gPj4+Pj4gU28sIGtlZXBp
bmcgVS1Cb290IHByb3BlciBvZmZzZXQgc3RhcnQgZnJvbSAxMjhNaUIgd2l0aCAxTWlCCj4gPj4+
Pj4gc2l6ZSBhbmQgdGhlbiBzdGFydCBlbnYgb2YgOEtpQiB3b3VsZCBiZSBhIGNvbXBhdGlibGUg
bG9jYXRpb24KPiA+Pj4+PiBiZXR3ZWVuIGFsbCB2YXJpYW50cyBvZiBmbGFzaCBzaXplcy4KPiA+
Pj4+Pgo+ID4+Pj4+IFRoaXMgcGF0Y2ggYWRkIGVudiBzdGFydCBmcm9tIDB4MTQwMDAgd2l0aCBh
IHNpemUgb2YgOEtpQi4KPiA+Pj4+IFdoYXQncyB0aGUgc3BhY2UgbWFwIGluIFNQSSBmbGFzaCBz
dXBwb3NlIHRvIGJlPyBJbmNsdWRpbmcKPiA+Pj4+IHRwbC9zcGwvdS1ib290Lml0Ygo+ID4+Pj4K
PiA+Pj4+IEkgd291bGQgcHJlZmVyIHRvIHVzZSAxMjhLaUItOEtpQiBhcyB0aGUgZW52IHN0YXJ0
IGFkZHJlc3MsIHdlJ2QgYmV0dGVyCj4gPj4+PiB0byBhdm9pZCB0aGUKPiA+Pj4+Cj4gPj4+PiBy
aXNrIG9mIG92ZXJsYXAgYmV0d2VlbiB0aGUgZW52IHNwYWNlIGFuZCB0aGUgZmlybXdhcmUgc3Bh
Y2UuCj4gPj4+IEhlcmUgaXMgdGhlIDE2TWlCIGZsYXNoIGxheW91dCwgSSBoYXZlIHVzZWQuIEkg
Y2FuIHNlZSB0aGUgbG9hZGVyMQo+ID4+PiAodHBsL3NwbCkgY2FuIGJlIHBvc3NpYmxlIHRvIGxv
YWQgYXQgMHgwIG9yIDB4MzJLIHNvIEkgaGF2ZSBnaXZlbiB0aGUKPiA+Pj4gc3BhY2UgZm9yIGl0
LiBhbmQgOEsgZW52IGFmdGVyIGxvYWRlcjIodS1ib290KS4gbGV0IG1lIGtub3cgeW91cgo+ID4+
PiB0aG91Z2h0cz8KPiA+PiBXaHkgd2UgY2Fubm90IHVzZSB0aGUgc2FtZSBsYXlvdXQgYXMgd2hh
dCBpcyBkZWZpbmVkIGZvciBTRC9lTU1DOgo+ID4+IGh0dHA6Ly9vcGVuc291cmNlLnJvY2stY2hp
cHMuY29tL3dpa2lfUGFydGl0aW9ucwo+ID4+Cj4gPj4KPiA+Pgo+ID4+PiAgICAgICAgICAgMHgw
IC0gMHg4MDAwLCAgICAgICAzMksgID0+ICByZXNlcnZlZC9sb2FkZXIxCj4gPj4+ICAgICAweDgw
MDAgLSAweDQwMDAwLCAgICAyMjRLID0+ICBsb2FkZXIxCj4gPj4+ICAgMHg0MDAwMCAtIDB4MTQw
MDAwLCAgICAxTSAgPT4gIGxvYWRlcjIKPiA+Pj4gMHgxNDAwMDAgLSAweDE0MjAwMCwgICAgOEsg
ID0+ICAgZW52Cj4gPj4+IDB4MTQyMDAwIC0gMHg4NDIwMDAsICAgIDdNICA9PiAga2VybmVsCj4g
Pj4+IDB4ODQyMDAwIC0gMHg4NTM4MDAsICAxMDBLID0+ICBkdGIKPiA+Pj4gMHg4NTM4MDAgLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgPT4gIHJvb3QKPiA+PiBUaGVzZSBzbWFsbCBsb2Fk
ZXIxL2xvYWRlcjIgcGFydGl0aW9ucyBtYXkgYnl0ZSB1cyBsYXRlciB3aGVuIG5ld2VyCj4gPj4g
dS1ib290IHZlcnNpb25zIG9ubHkgd2lsbCBmaXQgZm9yIFNEIGFuZCBub3QgZm9yIFNQSSBhbnlt
b3JlLgo+ID4gWWVzLCB0aGUgaW5pdGlhbCBpZGVhIGlzIHRvIHJldXNlIHRoZSBleGlzdGluZyBT
RCBsYXlvdXQgYnV0IHRoZSBTUEkKPiA+IGZsYXNoIGlzIGxpbWl0ZWQgaW4gc2l6ZSwgYW5kIGl0
IGlzIGZ1cnRoZXIgbGltaXRlZCBpbiByazMzOTkgYm9hcmRzCj4gPiAocm9ja3BybzY0LCByb2Mt
cmszMzk5LXBjLi4pLiB3aGljaCBpcyAxNk1pQi4gU28gcmV1c2luZyBoYWxmIG9mIHRoZQo+ID4g
Zmxhc2ggc2l6ZSB3aWxsIG9jY3VweSBmb3IgdGlsbCBsb2FkZXIyIGluIFNEIHNjaGVtZS4KPiBF
eGFjdGx5LiBPbiBteSBSb2NrUHJvNjQgU1BJIGZsYXNoIHNpemUgaXMgMTZNaUIuIFRoaXMgY292
ZXJzIGV2ZXJ5dGhpbmcKPiB1cCB0byAiYm9vdCIsIGVzcGVjaWFsbHkgbG9hZGVyMSwgbG9hZGVy
MiwgYW5kIFUtQm9vdCBFTlYuIFByb2JhYmx5IHRoZQo+IFNQSSBvbiB0aGVzZSBib2FyZHMgaXMg
c2l6ZWQgdGhpcyB3YXkgdG8gZXhhY3RseSBtYXRjaCB0aGlzIHVzZSBjYXNlLgo+IFdoYXQgc2hv
dWxkIGJlIHRoZSBhZHZhbnRhZ2Ugb2Ygb25seSB1c2luZyBoYWxmIG9mIHRoZSBhdmFpbGFibGUg
bWVtb3J5PwoKVG8gbWFrZSBzbWFsbCBzeXN0ZW1zIHRvIGZ1bGwgdXNlIG9mIEZsYXNoLiB1bmxp
a2UgZGlzdHJvcywgdGhlCmVtYmVkZGVkIHN5c3RlbXMgdGhhdCBydW4ganVzdCB3aXRoIGluaXRy
YW1mcy4gT3IgYW55IHVwZGF0ZSBtZWNoYW5pc20KaW4gc3lzdGVtcyB0byBtYWtlIGZsYXNoIGJv
b3QgYXMgYW4gdXBkYXRlIGFnZW50IGFuZCBTRCBvciBvdGhlcgptZWRpdW1zIGFzIG1haW4gc3lz
dGVtcy4KCj4gPj4gVGhlIHJlc2VydmVkIHNwYWNlIGZvciBrZXJuZWwgaXMgYWxyZWFkeSB0b28g
c21hbGwgZm9yIG5vcm1hbCBrZXJuZWwKPiA+PiBidWlsZHMgdG9kYXksIG5vdCB0byBtZW50aW9u
IGEgcm9vdCBmaWxlc3lzdGVtLgo+ID4+Cj4gPj4gQXJlIHRoZXJlIGFueSB1c2UgY2FzZXMgd2hl
cmUgc29tZWJvZHkgbmVlZHMgdG8gcGxhY2UgYm9vdCBhbmQgcm9vdAo+ID4+IHBhcnRpdGlvbnMg
b24gU1BJIGZsYXNoPwo+ID4gU28sIGV4cGxhaW5lZCBhYm92ZSBkdWUgdG8gc2l6ZSBsaW1pdGF0
aW9uIHRoZSByZXNwZWN0aXZlIGJsb2NrcyBsaWtlCj4gPiBrZXJuZWwsIHJvb3QgKHdlIGNhbiBz
YXkgaW5pdHJkKSBhcmUgaW5kZWVkIGxlc3Mtc2l6ZWQgcGFydGl0aW9ucy4KPiA+IE1vcmVvdmVy
IFNQSSBmbGFzaCBpcyBub3QgYSBzdWl0YWJsZSBzdG9yYWdlIGZvciByb290ZnMgaW4gcm9ja2No
aXAsCj4gPiBzaW5jZSB0aGUgYm9vdCBvcmRlciBzdGFydCBmcm9tIFNQSSBmbGFzaCB1c3VhbGx5
IGJvYXJkIHdvdWxkIGJvb3QKPiA+IGZyb20gZmxhc2ggYW5kIHRoZW4gbG9vayBmb3IgU0QsIGVN
TUMsIFBDSWUgTlZNIGZvciBsb2FkaW5nIGJpZyBjaHVuawo+ID4gcm9vdGZzLgo+ID4KPiA+IE1v
cmUgb3IgbGVzcyB0aGUgaWRlYSBvZiBhYm92ZSBmbGFzaCBsYXlvdXQgaXMgdG8gZml0IHByb3Bl
cmx5Cj4gPiB3aXRoLWluLXRoZSBzaXplIGJvdW5kYXJpZXMgYW5kIGluZGVlZCBmb3Igc21hbGwg
aW5pdHJhbWZzIHN5c3RlbXMuCj4gV2UgdXNlIGRpc3Ryb2Jvb3QgaW4gdGhlIGRlZmNvbmZpZ3Mg
b2YgdGhlc2UgYm9hcmRzLCBzbyBubyBzZXBhcmF0ZQo+IHNwYWNlIGZvciBrZXJuZWwgb3IgaW5p
dHJkIGlzIHJlcXVpcmVkIGluIChyYXcpIGZsYXNoLCB0aGVzZSBibG9icyBhcmUKPiBhbHdheXMg
bG9hZGVkIGZyb20gdGhlIGJvb3QgcGFydGl0aW9uIGluc3RlYWQuCj4gQmVzaWRlcyB0aGF0LCBr
ZXJuZWxzIGZvciBteSBSb2NrUHJvNjQgYXJlIGJpZ2dlciAoMTJNaUIgLSAyME1pQikgdGhhbgo+
IHRoZSBhdmFpbGJhbGUgc3BhY2UgaW4gU1BJIGFueXdheSwgd2l0aCBhZGRpdGlvbmFsIH41TWlC
IGZvciBpbml0cmQuCgpBcyBJIGV4cGxhaW5lZCBhYm92ZS4gU28sIHdlIGNhbiBza2lwIExpbnV4
LCByb290ZnMgZnJvbSBmbGFzaCBhbmQKbWFrZSB1c2Ugb2YgZmxhc2ggbGF5b3V0IHRoYXQgY29t
cGF0aWJsZSBiZXR3ZWVuIGFsbCBzeXN0ZW1zLiB3aGF0IGlzCnRoZSBpc3N1ZSB3aXRoIHRoYXQg
b3RoZXIgdGhhbiBmdXR1cmUgcHJvb2Ygd2l0aCBTRCBsYXlvdXQuCgpJIHVuZGVyc3RhbmQgeW91
ciBwb2ludCwgYnV0IGVhY2ggYW5kIGV2ZXJ5IHN0b3JhZ2UgbWVkaXVtIGNhbiBoYXZlCml0J3Mg
b3duIHVzYWdlIHRvIG1ha2UgdXNlIG9mIGZ1bGwgc3lzdGVtIHJ1bm5pbmcuIFNvIHRoZSBwYXJ0
aXRpb24KbGF5b3V0IHdvdWxkIGRlcGVuZCBvbiB0aGUgc2l6ZSBhbmQgZmlsZSBzeXN0ZW1zIGJ1
dCBpdCBzaG91bGRuJ3QKZGVwZW5kIG9uIHBhcnRpY3VsYXIgc29mdHdhcmUgdXNhZ2UsIElNSE8u
Cgo+Cj4gTXkgdXNlIGNhc2UgZm9yIFNQSSB3b3VsZCBiZSB0byBzdG9yZSB1LWJvb3QrU1BMK1RQ
TCtBVEYrZW52aXJvbm1lbnQKPiB0aGVyZSwgc28gdGhhdCBJIGNhbiB1c2UgYSBzaW5nbGUgY29t
YmluZWQgcm9vdCtib290IHBhcnRpdGlvbiBvbiBhIFNECj4gY2FyZCAvIFVTQiBkaXNrLgo+IFNv
IEkgdGhpbmsgdGhlIGVhc2llc3QsIGxlYXN0IGNvbmZ1c2luZywgYW5kIGZ1dHVyZS1wcm9vZiAg
U1BJIHBhcnRpdGlvbgo+IHNjaGVtZSB3b3VsZCBiZSB0byB1c2UgZXhhY3RseSB3aGF0IGlzIGRl
ZmluZWQgYWxyZWFkeSBmb3IgU0QvZU1NQy4KCkxlc3MgY29uZnVzZWQgaW4gdGVybXMgb2YgbWFp
bnRlbmFuY2UgYW5kIGVhc3kgdG8gdW5kZXJzdGFuZCBidXQgaXQKbWF5IG5vdCBiZSB1c2VkIGZv
ciBzb21lIGNvcm5lciBjYXNlcyBsaWtlIHNtYWxsZXIgc3lzdGVtcy4KCkphZ2FuLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
