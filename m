Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC36A12CDC9
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymWI/oMMCmah6aQZEQZcjCOJ/GEgBLDlw+MHUL9opcI=; b=CvygEJHMdYdpZj
	92q/spizlCJkKbuCyD7XU3im4VI7SJx00wXx145uTR9BQ7I1LUCyAXfuPThUabkfFvf512elUN0gm
	cycOFmwcOaOW7/8BMycFUbQFqO1LKj6LhR2nWrDePGXuqVjGfnFJZzkRrM9jeWxbuZmTHnoCYK35W
	UlZ6+giwgy6ttmZG3G6fpCZ26j6ShNP+r68Y7q/2ZBryNLQkRzIoqYLNNMlUw7CccicK3G6XRd69d
	hDSoIUyfyLhEuhBL+LZFvA4gVhnGhZBsZg/kYNrccFlcJPUYRIGkHkWP7zaDYz6efeiGJXgYhzQk1
	r/0OMImVKV/pu6wSp4cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqcF-00035z-03; Mon, 30 Dec 2019 08:41:31 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqcB-00035L-0l
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:41:28 +0000
Received: by mail-il1-x142.google.com with SMTP id t2so11966209ilq.9
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=htKsQXMZxk09D/jwZRpsmBtCxJnfX3f6L32467SDeOM=;
 b=u+A1jIN7XUBYlXcdmXDwCBh+vtWNz5gzgord5Up+lEB5CPQ09A9B2wo1fzYEH9OkKC
 O/KljN3juGYqORafk1kPqbxGc6BwdGQHNeFVPttyY9W/vSZ4VFt6exoxqJyJRlX4dEMS
 nzXeSXI9ZPtcbdM77iBn2kuVQk5tCFlbF56cU8FGbpsmgBuDHMT5wX7pXbbtmEPahBrX
 BN06VaMDkADnS5X0IwqlCYJqcm5Lgzegz/ZesGqYyCEbGlEnmUTX41UchGySpevy+h2x
 ZFeIeRqLA5wiTPAsHnmdeCZhXiTWDb8blQadmUCKhAyGorg0ISOCvop3QpW41b/vrq8y
 3NJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=htKsQXMZxk09D/jwZRpsmBtCxJnfX3f6L32467SDeOM=;
 b=gRN/qx5K/9jPx3OgNr0m+3F6gLRaqrxDPkzJigi2rfbNd8FqhufQxPVXFuJoVO4FH0
 Uh1dAh9g/FBnWuY5N74HKJKa9uR+n8652FeJkra5XygscAvUH0JKBrYE7qSWTHjY49or
 aMS5wLkg4EHYNNi+OfrNMsM23A141iv6AsshxAweUHiU4t6Ib9qBdPbkK2x8TJfFhMLt
 Vx1N8jsWK5JdtqqeatJJSDIdoCZDKIbNvv6Vepcezc9tmgwCgATNzAqL0mloiy0DjJlC
 At7zzZUjDALSMxq+caeZrJ5pkwLpYaAUi6JZ9JLBQfQ7ytgtURz2G0gbSRONkbfDKZTH
 IuFA==
X-Gm-Message-State: APjAAAWXRatCROkBMNFx2RhUNd93bm7tc7QIPZqS7LFI7CnrIMNbUZfH
 Hu1LmeRk+l4HE71akcyPhe4JC9JetFpeQnMucGs=
X-Google-Smtp-Source: APXvYqxbmN0xNKRwVqKKNhO927Xq2+clx9GjbVgnJZpC89AfWKqi4KcfC6R3ahrlOFyuLp/bZ4gmd65sE9jkPA+j15Y=
X-Received: by 2002:a92:d7c6:: with SMTP id g6mr50107029ilq.37.1577695285701; 
 Mon, 30 Dec 2019 00:41:25 -0800 (PST)
MIME-Version: 1.0
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
 <20191230082819.30191-8-jagan@amarulasolutions.com>
In-Reply-To: <20191230082819.30191-8-jagan@amarulasolutions.com>
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Mon, 30 Dec 2019 11:41:14 +0300
Message-ID: <CAJs94EYBrwf9Pt0R-_OypT-JHWGFpZYxRhKcUXWgXTFJi9O0HA@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] doc: boards: Add rockchip documentation
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_004127_064999_6839636A 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matwey.kornilov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCBzZXQuCkN1cnJlbnRseSwgSSBoYXZlIHRo
ZSBmb2xsb3dpbmcgY29uY2VybiBhYm91dCBkb2N1bWVudGF0aW9uIGFuZApvdmVyYWxsIHByb3Bv
c2VkIHUtYm9vdCBkZXBsb3kgcHJvY2VkdXJlLgoKVGhlcmUgaXMgYSB1c2UgY2FzZSwgd2hlbiBJ
IGhhdmUgdG8gdXNlIFJvY2tjaGlwIHByb3ByaWV0YXJ5IFRQTApiaW5hcnkgYW5kIGRlcGxveSBp
dCBpbnN0ZWFkIG9mIHUtYm9vdCdzIG9uZSB0b2dldGhlciB3aXRoIHUtYm9vdCBTUEwKYW5kIElU
QiBpbWFnZXMuCkl0IGlzIHJlcXVpcmVkIGZvciBkZWJ1Z2dpbmcgcHVycG9zZXMgYmVjYXVzZSB1
bmZvcnR1bmF0ZWx5IHUtYm9vdCBUUEwKaXMgdXN1YWxseSBsZXNzIHN0YWJsZSB0aGF0IHByb3By
aWV0YXJ5IG9uZS4gQW5kIHN3aXRjaGluZyB0aGUgVFBMCmJpbmFyeSBpcyBiYXNpY2FsbHkgdGhl
IGZpcnN0IHN0ZXAgd2hlbiBJIHNlZSByYW5kb20gc3RyYW5nZSBjcmFzaGVzLgpJdCBpcyBhIGdv
b2Qgd2F5IHRvIGxvY2F0ZSBhbiBpc3N1ZSBvcmlnaW4uCgpDb3VsZCB3ZSBzb21laG93IGVuc3Vy
ZSB0aGF0IHRoaXMgYmFja3VwIGRlcGxveW1lbnQgcGxhbiBpcyBzdGlsbApwb3NzaWJsZSBhbmQg
ZG9jdW1lbnRlZCBpbiB0aGUgdGV4dCBoZXJlPyBJdCB3b3VsZCBiZSBncmVhdCBpZiB0aGUKdXNl
ciBjb3VsZCBsZWFybiB0aGUgcHJvY2VkdXJlIGZyb20gdGhlIHRleHQsIG5vdCBmcm9tIHRoZSBz
b3VyY2UKY29kZSwgcmVjb3ZlcmluZyBjb3JyZWN0IG9mZnNldHMuCgrQv9C9LCAzMCDQtNC10Lou
IDIwMTkg0LMuINCyIDExOjI4LCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNv
bT46Cj4KPiBSb2NrY2hpcCBoYXMgZG9jdW1lbnRhdGlvbiBmaWxlLCBkb2MvUkVBRE1FLnJvY2tj
aGlwIGJ1dAo+IHdoaWNoIGlzIG5vdCBzbyByZWFkYWJsZSB0byBhZGQgb3IgdW5kZXJzdGFuZCB0
aGUgZXhpc3RpbmcKPiBjb250ZW50cy4gRXZlbiB0aGUgZm9ybWF0IHRoYXQgc3VwcG9ydCBpcyBs
ZWdhY3kgcmVhZG1lCj4gaW4gVS1Cb290Lgo+Cj4gQWRkIHJvY2tjaGlwIHNwZWNpZmljIGRvY3Vt
ZW50YXRpb24gZmlsZSB1c2luZyBuZXcgcnN0Cj4gZm9ybWF0LCB3aGljaCBkZXNjcmliZXMgdGhl
IGluZm9ybWF0aW9uIGFib3V0IFJvY2tjaGlwCj4gc3VwcG9ydGVkIGJvYXJkcyBhbmQgaXQncyB1
c2FnZSBzdGVwcy4KPgo+IEFkZGVkIG1pbmltYWwgaW5mb3JtYXRpb24gYWJvdXQgcmszMjg4LCBy
azMzMjgsIHJrMzM2OAo+IGFuZCByazMzOTkgYm9hcmRzIGFuZCB1c2FnZS4gVGhpcyB3b3VsZCBp
bmRlZWQgdXBkYXRlZAo+IGZ1cnRoZXIgYmFzZWQgb24gdGhlIHJlcXVpcmVtZW50cyBhbmQgdXBk
YXRlcy4KPgo+IENjOiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgo+IENj
OiBNYXR3ZXkgVi4gS29ybmlsb3YgPG1hdHdleS5rb3JuaWxvdkBnbWFpbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gLS0tCj4g
IGRvYy9ib2FyZC9yb2NrY2hpcC9pbmRleC5yc3QgICAgfCAgMTAgKysrCj4gIGRvYy9ib2FyZC9y
b2NrY2hpcC9yb2NrY2hpcC5yc3QgfCAxMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMzggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZG9jL2JvYXJkL3JvY2tjaGlwL2luZGV4LnJzdAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdAo+Cj4gZGlmZiAtLWdpdCBhL2RvYy9ib2Fy
ZC9yb2NrY2hpcC9pbmRleC5yc3QgYi9kb2MvYm9hcmQvcm9ja2NoaXAvaW5kZXgucnN0Cj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi4wYzM3N2U5YmJiCj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2RvYy9ib2FyZC9yb2NrY2hpcC9pbmRleC5yc3QKPiBAQCAtMCwwICsx
LDEwIEBACj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsuLiBDb3B5
cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4g
Kwo+ICtSb2NrY2hpcAo+ICs9PT09PT09PQo+ICsKPiArLi4gdG9jdHJlZTo6Cj4gKyAgIDptYXhk
ZXB0aDogMgo+ICsKPiArICAgcm9ja2NoaXAKPiBkaWZmIC0tZ2l0IGEvZG9jL2JvYXJkL3JvY2tj
aGlwL3JvY2tjaGlwLnJzdCBiL2RvYy9ib2FyZC9yb2NrY2hpcC9yb2NrY2hpcC5yc3QKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLjYyNTE1NWU0MzIKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdAo+IEBAIC0wLDAg
KzEsMTI4IEBACj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ICsuLiBD
b3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+
Cj4gKwo+ICtST0NLQ0hJUAo+ICs9PT09PT09PQo+ICsKPiArQWJvdXQgdGhpcwo+ICstLS0tLS0t
LS0tCj4gKwo+ICtUaGlzIGRvY3VtZW50IGRlc2NyaWJlcyB0aGUgaW5mb3JtYXRpb24gYWJvdXQg
Um9ja2NoaXAgc3VwcG9ydGVkIGJvYXJkcwo+ICthbmQgaXQncyB1c2FnZSBzdGVwcy4KPiArCj4g
K1JvY2tjaGlwIGJvYXJkcwo+ICstLS0tLS0tLS0tLS0tLS0KPiArCj4gK1JvY2tjaGlwIGlzIFNv
QyBzb2x1dGlvbnMgcHJvdmlkZXIgZm9yIHRhYmxldHMgJiBQQ3MsIHN0cmVhbWluZyBtZWRpYQo+
ICtUViBib3hlcywgQUkgYXVkaW8gJiB2aXNpb24sIElvVCBoYXJkd2FyZS4KPiArCj4gK0Egd2lk
ZSByYW5nZSBvZiBSb2NrY2hpcCBTb0NzIHdpdGggYXNzb2NpYXRlZCBib2FyZHNhcmUgc3VwcG9y
dGVkIGluCj4gK21haW5saW5lIFUtQm9vdC4KPiArCj4gK0xpc3Qgb2YgbWFpbmxpbmUgc3VwcG9y
dGVkIHJvY2tjaGlwIGJvYXJkczoKPiArCj4gKyogcmszMjg4Cj4gKyAgICAgLSBFdmItUkszMjg4
Cj4gKyAgICAgLSBGaXJlZmx5LVJLMzI4OAo+ICsgICAgIC0gbXFtYWtlciBNaVFpCj4gKyAgICAg
LSBQaHl0ZWMgUkszMjg4IFBDTS05NDcKPiArICAgICAtIFBvcE1ldGFsLVJLMzI4OAo+ICsgICAg
IC0gUmFkeGEgUm9jayAyIFNxdWFyZQo+ICsgICAgIC0gVGlua2VyLVJLMzI4OAo+ICsgICAgIC0g
R29vZ2xlIEplcnJ5Cj4gKyAgICAgLSBHb29nbGUgTWlja2V5Cj4gKyAgICAgLSBHb29nbGUgTWlu
bmllCj4gKyAgICAgLSBHb29nbGUgU3BlZWR5Cj4gKyAgICAgLSBBbWFydWxhIFZ5YXNhLVJLMzI4
OAo+ICsqIHJrMzMyOAo+ICsgICAgIC0gUm9ja2NoaXAgUkszMzI4IEVWQgo+ICsgICAgIC0gUGlu
ZTY0IFJvY2s2NAo+ICsqIHJrMzM2OAo+ICsgICAgIC0gR2Vla0JveAo+ICsgICAgIC0gUFg1IEVW
Qgo+ICsgICAgIC0gUm9ja2NoaXAgc2hlZXAgYm9hcmQKPiArICAgICAtIFRoZW9icm9tYSBTeXN0
ZW1zIFJLMzM2OC11UTcgU29NCj4gKyogcmszMzk5Cj4gKyAgICAgLSA5NmJvYXJkcyBSSzMzOTkg
RmljdXMKPiArICAgICAtIDk2Ym9hcmRzIFJvY2s5NjAKPiArICAgICAtIEZpcmVmbHktUkszMzk5
IEJvYXJkCj4gKyAgICAgLSBGaXJlZmx5IFJPQy1SSzMzOTktUEMgQm9hcmQKPiArICAgICAtIEZy
aWVuZGx5RWxlYyBOYW5vUEMtVDQKPiArICAgICAtIEZyaWVuZGx5RWxlYyBOYW5vUGkgTTQKPiAr
ICAgICAtIEZyaWVuZGx5QVJNIE5hbm9QaSBORU80Cj4gKyAgICAgLSBHb29nbGUgQm9iCj4gKyAg
ICAgLSBLaGFkYXMgRWRnZQo+ICsgICAgIC0gS2hhZGFzIEVkZ2UtQ2FwdGFpbgo+ICsgICAgIC0g
S2hhZGFzIEVkZ2UtVgo+ICsgICAgIC0gT3JhbmdlIFBpIFJLMzM5OSBCb2FyZAo+ICsgICAgIC0g
UGluZTY0IFJvY2tQcm82NAo+ICsgICAgIC0gUmFkeGEgUk9DSyBQaSA0Cj4gKyAgICAgLSBSb2Nr
Y2hpcCBSSzMzOTkgRXZhbHVhdGlvbiBCb2FyZAo+ICsgICAgIC0gVGhlb2Jyb21hIFN5c3RlbXMg
UkszMzk5LVE3IFNvTQo+ICsKPiArQnVpbGRpbmcKPiArLS0tLS0tLS0KPiArCj4gK1RGLUEKPiAr
Xl5eXgo+ICsKPiArVEYtQSB3b3VsZCByZXF1aXJlIHRvIGJ1aWxkIGZvciBBUk02NCBSb2NrY2hp
cCBTb0NzIHBsYXRmb3Jtcy4KPiArCj4gK1RvIGJ1aWxkIFRGLUE6Ogo+ICsKPiArICAgICAgICBn
aXQgY2xvbmUgaHR0cHM6Ly9naXRodWIuY29tL0FSTS1zb2Z0d2FyZS9hcm0tdHJ1c3RlZC1maXJt
d2FyZS5naXQKPiArICAgICAgICBjZCBhcm0tdHJ1c3RlZC1maXJtd2FyZQo+ICsgICAgICAgIG1h
a2UgcmVhbGNsZWFuCj4gKyAgICAgICAgbWFrZSBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgt
Z251LSBQTEFUPXJrMzM5OQo+ICsKPiArU3BlY2lmeSB0aGUgUExBVD0gd2l0aCBkZXNpcmVkIHJv
Y2tjaGlwIHBsYXRmb3JtIHRvIGJ1aWxkIFRGLUEgZm9yLgo+ICsKPiArVS1Cb290Cj4gK15eXl5e
Xgo+ICsKPiArVG8gYnVpbGQgcmszMzI4IGJvYXJkczo6Cj4gKwo+ICsgICAgICAgIGV4cG9ydCBC
TDMxPS9wYXRoL3RvL2FybS10cnVzdGVkLWZpcm13YXJlL3RvL2JsMzEuZWxmCj4gKyAgICAgICAg
bWFrZSBldmItcmszMzI4X2RlZmNvbmZpZwo+ICsgICAgICAgIG1ha2UKPiArCj4gK1RvIGJ1aWxk
IHJrMzI4OCBib2FyZHM6Ogo+ICsKPiArICAgICAgICBtYWtlIGV2Yi1yazMyODhfZGVmY29uZmln
Cj4gKyAgICAgICAgbWFrZQo+ICsKPiArVG8gYnVpbGQgcmszMzY4IGJvYXJkczo6Cj4gKwo+ICsg
ICAgICAgIGV4cG9ydCBCTDMxPS9wYXRoL3RvL2FybS10cnVzdGVkLWZpcm13YXJlL3RvL2JsMzEu
ZWxmCj4gKyAgICAgICAgbWFrZSBldmItcHg1X2RlZmNvbmZpZwo+ICsgICAgICAgIG1ha2UKPiAr
Cj4gK1RvIGJ1aWxkIHJrMzM5OSBib2FyZHM6Ogo+ICsKPiArICAgICAgICBleHBvcnQgQkwzMT0v
cGF0aC90by9hcm0tdHJ1c3RlZC1maXJtd2FyZS90by9ibDMxLmVsZgo+ICsgICAgICAgIG1ha2Ug
ZXZiLXJrMzM5OV9kZWZjb25maWcKPiArICAgICAgICBtYWtlCj4gKwo+ICtGbGFzaGluZwo+ICst
LS0tLS0tLQo+ICsKPiArU0QgQ2FyZAo+ICteXl5eXl5eCj4gKwo+ICtBbGwgcm9ja2NoaXAgcGxh
dGZvcm1zLCBleGNlcHQgcmszMTI4ICh3aGljaCBkb2Vzbid0IHVzZSBTUEwpIGFyZSBub3cKPiAr
c3VwcG9ydGluZyBzaW5nbGUgYm9vdCBpbWFnZSB1c2luZyBiaW5tYW4gYW5kIHBhZF9jYXQuCj4g
Kwo+ICtUbyB3cml0ZSBhbiBpbWFnZSB0aGF0IGJvb3RzIGZyb20gYW4gU0QgY2FyZCAoYXNzdW1l
ZCB0byBiZSAvZGV2L3NkYSk6Ogo+ICsKPiArICAgICAgICBzdWRvIGRkIGlmPXUtYm9vdC1yb2Nr
Y2hpcC5iaW4gb2Y9L2Rldi9zZGEgc2Vlaz02NAo+ICsgICAgICAgIHN5bmMKPiArCj4gK1RPRE8K
PiArLS0tLQo+ICsKPiArLSBBZGQgcm9ja2NoaXAgaWRibG9hZGVyIGltYWdlIGJ1aWxkaW5nCj4g
Ky0gRGVzY3JpYmUgc3RlcHMgZm9yIGVNTUMgZmxhc2hpbmcKPiArLSBBZGQgbWlzc2luZyBTb0Mn
cyB3aXRoIGl0IGJvYXJkcyBsaXN0Cj4gKwo+ICsuLiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxh
c29sdXRpb25zLmNvbT4KPiArLi4gVGh1IE9jdCAxNyAyMjozNjoxNCBJU1QgMjAxOQo+IC0tCj4g
Mi4xOC4wLjMyMS5nZmZjNmZhMGUzCj4KCgotLSAKV2l0aCBiZXN0IHJlZ2FyZHMsCk1hdHdleSBW
LiBLb3JuaWxvdgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
