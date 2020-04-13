Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82611A6AC0
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Apr 2020 19:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1V6kjNlBqPm3iPBMEO5X3Lr4sR+Z1z3lzIs76IsfUI=; b=RfBOki4Mge2VWv
	SnwNgMRu8ktJxhmPgf0SeIDwUZuvyjdRZ/oGiREZ6icOo4/fcaDROvoh1n879n48nukUlLRtwPgnz
	ydLBZjo6sdsDk+f7+dBDLW8XNbqu5Bwiz7t7QV85wKXhIwY3SasDKg/tAufkaDlnqdjLG0KSfk35F
	ZoIEFHLI9IOSD3QnU1Jg3P9jKgxG7b+I8XwXtJ4dU6pl78LeW5Qsu3r2xFG+GxIViu9Tzd6DUKTG5
	9+U4oF+/U3MP3GzykKSmrU/JStDTR1H1qf/wd3ipeql5lppM4W5u6sJ3RmqPCB3nQptIUkoQPJ9dv
	CYehATdhTdUyjjm5msLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2RN-00077W-Jt; Mon, 13 Apr 2020 17:00:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2RI-00067a-H7
 for linux-rockchip@lists.infradead.org; Mon, 13 Apr 2020 17:00:07 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F95F2063A;
 Mon, 13 Apr 2020 17:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586797204;
 bh=ocGzwyhvt/PYPOB6+zxPTBWiQ899GAZEAY8iTUvNIUs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bkW+EpneMfX+D9Fq74tsKvBc78hHopXaLraz2OzLalkawmS5DI/6HD6SbW2OYPnDh
 FIuAI9QbsUfix589HVlHAulQ1glRXMUbG3bqg+pZMNZ661s5+e+B/g4c4k42pcOdNc
 uERlxUqGbIItvHB+RblBOmESFU8ajXH0dMXm5q/8=
Date: Mon, 13 Apr 2020 17:59:59 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH v3] iio: adc: rockchip_saradc: Add support iio buffers
Message-ID: <20200413175959.7766b9c8@archlinux>
In-Reply-To: <4304017.Osc3njyXrW@diego>
References: <20200412224251.2919182-1-heiko@sntech.de>
 <20200413174434.55b2941a@archlinux> <4304017.Osc3njyXrW@diego>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_100004_647300_5FF5BE43 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lars@metafoo.de, xxm@rock-chips.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCAxMyBBcHIgMjAyMCAxODo1NToxMiArMDIwMApIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gSGkgSm9uYXRoYW4sCj4gCgpIaSBIZWlrbywKCj4gPiA+ICsv
KiBidWZmZXIgZWxlbWVudHMgYXJlIHUxNiwgdGltZXN0YW1wIG5lZWRzIHRvIGJlIDgtYnl0ZSBh
bGlnbmVkICovCj4gPiA+ICsjZGVmaW5lIFNBUkFEQ19CVUZGRVJfTlVNX1UxNglBTElHTihTQVJB
RENfTUFYX0NIQU5ORUxTLCA0KSAgCj4gPiBJIG1heSBiZSBnb2luZyBjcmF6eSBidXQgSSB0aGlu
ayB0aGF0IHdpbGwgZ2V0IHlvdSB0aGUgJ3N0YXJ0JyBvZiB0aGUKPiA+IHRpbWVzdGFtcCwgbm90
IHRoZSBsZW5ndGggaW5jbHVkaW5nIGl0Lgo+ID4gCj4gPiBXZSBzaG91bGQgYmUgc2VlaW5nIDI0
IGJ5dGVzIGhlcmUgPSAxMiB1MTZzLiAgU2FuaXR5IGNoZWNrIHRoZSB2YWx1ZS4KPiA+IAo+ID4g
UnVubmluZyB0aHJvdWdoIHRoZSBzdGFjayBvZiBkZWZpbmVzLgo+ID4gI2RlZmluZSBBTElHTih4
LCBhKQkJX19BTElHTl9LRVJORUwoKHgpLCAoYSkpCj4gPiAjZGVmaW5lIF9fQUxJR05fS0VSTkVM
KHgsIGEpCQlfX0FMSUdOX0tFUk5FTF9NQVNLKHgsICh0eXBlb2YoeCkpKGEpIC0gMSkKPiA+ICNk
ZWZpbmUgX19BTElHTl9LRVJORUxfTUFTSyh4LCBtYXNrKQkoKCh4KSArIChtYXNrKSkgJiB+KG1h
c2spKQo+ID4gCj4gPiBBTElHTig2LCA0KSA9PSBfX0FMSUdOX0tFUk5FTCg2LCA0KQo+ID4gICAg
ICAgICAgICAgPT0gX19BTElHTl9LRVJORUxfTUFTSyg2LCAzKQo+ID4gICAgICAgICAgICAgPT0g
KCgoNiArIDMpICYgfjMpIAo+ID4gd2hpY2ggaXMgOSB3aXRoIHRoZSBib3R0b20gdHdvIGJpdHMg
bWFza2VkIG9yIGIxMDAxICYgYjExMDAgPSA4IG5vdCAxMgo+ID4gCj4gPiBTbyBJIHRoaW5rIHlv
dSBhcmUgbG9va2luZyBmb3IKPiA+IEFMSUdOKFNBUkFEQ19NQVhfQ0hBTk5FTFMgKyBzaXplb2Yo
dTY0KSAvIHNpemVvZih1MTYpLCA0KQo+ID4gd2hpY2ggd2lsbCBiZSAoKDEwICsgMykgJiB+Mykg
YjExMDEgJiBiMTEwMCA9IDEyICAKPiAKPiBobW0sIGdldHRpbmcgdGhlIHN0YXJ0IG9mIHRoZSB0
aW1lc3RhbXAgd2FzIGFjdHVhbGx5IHdoYXQgSSBpbnRlbmRlZCA7LSkKPiBUaGUgZGxuMi1hZGMg
ZHJpdmVyIGRpZCB0aGF0IGZhbmN5IHN0cnVjdCBkZWZpbml0aW9uIGZvciBpdHMgZGF0YS4gd2hp
Y2gKPiBJIHN0b2xlLCBzZWUgdGhlIHBhcnQgZnJvbSBibG93OgoKQ3Jvc3NlZCBlbWFpbHMuIEkg
cmVhbGlzZWQgSSB3YXMgYmVpbmcgYW4gaWRpb3QgYnV0IGhhZCBhbHJlYWR5IGNsaWNrZWQgc2Vu
ZCA6KQoKPiAKPiA+ID4gKwlzdHJ1Y3Qgewo+ID4gPiArCQl1MTYgdmFsdWVzW1NBUkFEQ19CVUZG
RVJfTlVNX1UxNl07Cj4gPiA+ICsJCWludDY0X3QgdGltZXN0YW1wOwo+ID4gPiArCX0gZGF0YTsg
IAo+IAo+IFNvIFNBUkFEQ19CVUZGRVJfTlVNIHJlYWxseSBpcyBtZWFudCB0byBvbmx5IGNvbnRh
aW4gdGhlCj4gbnVtYmVyIG9mIGFjdHVhbCBidWZmZXIgZGF0YSAtIEkgZ3Vlc3MgSSBzaG91bGQg
ZXhwbGFpbiB0aGF0IG91dCBiZXR0ZXIKPiBpbiB0aGUgY29tbWVudC4gQmVjYXVzZSBkZWZpbmlu
ZyB0aGlzIHNlcGFyYXRlIG1ha2VzIHRoaXMgc28gbXVjaAo+IG1vcmUgcmVhZGFibGUgd2hlbiB3
ZSdyZSBub3QgdHJ5aW5nIHRvIGltcGxpY2l0bHkgYWRkIHRoZSB0aW1lc3RhbXAKPiBzcGFjZS4K
PiAKPiBBbmQgYSBzaXplX29mKGRhdGEpIGZvciB0aGF0IHN0cnVjdCB0aGVuIHJldHVybmVkIG5p
Y2VseSB0aGVzZSAyNCBieXRlcwo+IGluIG15IHRlc3RzLgo+IAo+IAo+ID4gPiAgCj4gPiA+ICBz
dHJ1Y3Qgcm9ja2NoaXBfc2FyYWRjX2RhdGEgewo+ID4gPiAtCWludAkJCQludW1fYml0czsKPiA+
ID4gIAljb25zdCBzdHJ1Y3QgaWlvX2NoYW5fc3BlYwkqY2hhbm5lbHM7Cj4gPiA+ICAJaW50CQkJ
CW51bV9jaGFubmVsczsKPiA+ID4gIAl1bnNpZ25lZCBsb25nCQkJY2xrX3JhdGU7Cj4gPiA+IEBA
IC00OSw4ICs1NiwzNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfc2FyYWRjIHsKPiA+ID4gIAlzdHJ1Y3Qg
cmVzZXRfY29udHJvbAkqcmVzZXQ7Cj4gPiA+ICAJY29uc3Qgc3RydWN0IHJvY2tjaGlwX3NhcmFk
Y19kYXRhICpkYXRhOwo+ID4gPiAgCXUxNgkJCWxhc3RfdmFsOwo+ID4gPiArCWNvbnN0IHN0cnVj
dCBpaW9fY2hhbl9zcGVjICpsYXN0X2NoYW47Cj4gPiA+ICB9Owo+ID4gPiAgCj4gPiA+ICtzdGF0
aWMgdm9pZCByb2NrY2hpcF9zYXJhZGNfcG93ZXJfZG93bihzdHJ1Y3Qgcm9ja2NoaXBfc2FyYWRj
ICppbmZvKQo+ID4gPiArewo+ID4gPiArCS8qIENsZWFyIGlycSAmIHBvd2VyIGRvd24gYWRjICov
Cj4gPiA+ICsJd3JpdGVsX3JlbGF4ZWQoMCwgaW5mby0+cmVncyArIFNBUkFEQ19DVFJMKTsKPiA+
ID4gK30KPiA+ID4gKwo+ID4gPiArc3RhdGljIGludCByb2NrY2hpcF9zYXJhZGNfY29udmVyc2lv
bihzdHJ1Y3Qgcm9ja2NoaXBfc2FyYWRjICppbmZvLAo+ID4gPiArCQkJCSAgIHN0cnVjdCBpaW9f
Y2hhbl9zcGVjIGNvbnN0ICpjaGFuKQo+ID4gPiArewo+ID4gPiArCXJlaW5pdF9jb21wbGV0aW9u
KCZpbmZvLT5jb21wbGV0aW9uKTsKPiA+ID4gKwo+ID4gPiArCS8qIDggY2xvY2sgcGVyaW9kcyBh
cyBkZWxheSBiZXR3ZWVuIHBvd2VyIHVwIGFuZCBzdGFydCBjbWQgKi8KPiA+ID4gKwl3cml0ZWxf
cmVsYXhlZCg4LCBpbmZvLT5yZWdzICsgU0FSQURDX0RMWV9QVV9TT0MpOwo+ID4gPiArCj4gPiA+
ICsJaW5mby0+bGFzdF9jaGFuID0gY2hhbjsKPiA+ID4gKwo+ID4gPiArCS8qIFNlbGVjdCB0aGUg
Y2hhbm5lbCB0byBiZSB1c2VkIGFuZCB0cmlnZ2VyIGNvbnZlcnNpb24gKi8KPiA+ID4gKwl3cml0
ZWwoU0FSQURDX0NUUkxfUE9XRVJfQ1RSTAo+ID4gPiArCQkJfCAoY2hhbi0+Y2hhbm5lbCAmIFNB
UkFEQ19DVFJMX0NITl9NQVNLKQo+ID4gPiArCQkJfCBTQVJBRENfQ1RSTF9JUlFfRU5BQkxFLAo+
ID4gPiArCQkgICBpbmZvLT5yZWdzICsgU0FSQURDX0NUUkwpOwo+ID4gPiArCj4gPiA+ICsJaWYg
KCF3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoJmluZm8tPmNvbXBsZXRpb24sIFNBUkFEQ19U
SU1FT1VUKSkKPiA+ID4gKwkJcmV0dXJuIC1FVElNRURPVVQ7Cj4gPiA+ICsKPiA+ID4gKwlyZXR1
cm4gMDsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiAgc3RhdGljIGludCByb2NrY2hpcF9zYXJhZGNf
cmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiA+ID4gIAkJCQkgICAgc3RydWN0
IGlpb19jaGFuX3NwZWMgY29uc3QgKmNoYW4sCj4gPiA+ICAJCQkJICAgIGludCAqdmFsLCBpbnQg
KnZhbDIsIGxvbmcgbWFzaykKPiA+ID4gQEAgLTYyLDI0ICs5OCwxMiBAQCBzdGF0aWMgaW50IHJv
Y2tjaGlwX3NhcmFkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+ID4gPiAg
CWNhc2UgSUlPX0NIQU5fSU5GT19SQVc6Cj4gPiA+ICAJCW11dGV4X2xvY2soJmluZGlvX2Rldi0+
bWxvY2spOwo+ID4gPiAgCj4gPiA+IC0JCXJlaW5pdF9jb21wbGV0aW9uKCZpbmZvLT5jb21wbGV0
aW9uKTsKPiA+ID4gLQo+ID4gPiAtCQkvKiA4IGNsb2NrIHBlcmlvZHMgYXMgZGVsYXkgYmV0d2Vl
biBwb3dlciB1cCBhbmQgc3RhcnQgY21kICovCj4gPiA+IC0JCXdyaXRlbF9yZWxheGVkKDgsIGlu
Zm8tPnJlZ3MgKyBTQVJBRENfRExZX1BVX1NPQyk7Cj4gPiA+IC0KPiA+ID4gLQkJLyogU2VsZWN0
IHRoZSBjaGFubmVsIHRvIGJlIHVzZWQgYW5kIHRyaWdnZXIgY29udmVyc2lvbiAqLwo+ID4gPiAt
CQl3cml0ZWwoU0FSQURDX0NUUkxfUE9XRVJfQ1RSTAo+ID4gPiAtCQkJCXwgKGNoYW4tPmNoYW5u
ZWwgJiBTQVJBRENfQ1RSTF9DSE5fTUFTSykKPiA+ID4gLQkJCQl8IFNBUkFEQ19DVFJMX0lSUV9F
TkFCTEUsCj4gPiA+IC0JCSAgICAgICBpbmZvLT5yZWdzICsgU0FSQURDX0NUUkwpOwo+ID4gPiAt
Cj4gPiA+IC0JCWlmICghd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZpbmZvLT5jb21wbGV0
aW9uLAo+ID4gPiAtCQkJCQkJIFNBUkFEQ19USU1FT1VUKSkgewo+ID4gPiAtCQkJd3JpdGVsX3Jl
bGF4ZWQoMCwgaW5mby0+cmVncyArIFNBUkFEQ19DVFJMKTsKPiA+ID4gKwkJcmV0ID0gcm9ja2No
aXBfc2FyYWRjX2NvbnZlcnNpb24oaW5mbywgY2hhbik7Cj4gPiA+ICsJCWlmIChyZXQpIHsKPiA+
ID4gKwkJCXJvY2tjaGlwX3NhcmFkY19wb3dlcl9kb3duKGluZm8pOwo+ID4gPiAgCQkJbXV0ZXhf
dW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKPiA+ID4gLQkJCXJldHVybiAtRVRJTUVET1VUOwo+
ID4gPiArCQkJcmV0dXJuIHJldDsKPiA+ID4gIAkJfQo+ID4gPiAtCj4gPiA+ICAJCSp2YWwgPSBp
bmZvLT5sYXN0X3ZhbDsKPiA+ID4gIAkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsK
PiA+ID4gIAkJcmV0dXJuIElJT19WQUxfSU5UOwo+ID4gPiBAQCAtOTEsNyArMTE1LDcgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9zYXJhZGNfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2Rl
diwKPiA+ID4gIAkJfQo+ID4gPiAgCj4gPiA+ICAJCSp2YWwgPSByZXQgLyAxMDAwOwo+ID4gPiAt
CQkqdmFsMiA9IGluZm8tPmRhdGEtPm51bV9iaXRzOwo+ID4gPiArCQkqdmFsMiA9IGNoYW4tPnNj
YW5fdHlwZS5yZWFsYml0czsKPiA+ID4gIAkJcmV0dXJuIElJT19WQUxfRlJBQ1RJT05BTF9MT0cy
Owo+ID4gPiAgCWRlZmF1bHQ6Cj4gPiA+ICAJCXJldHVybiAtRUlOVkFMOwo+ID4gPiBAQCAtMTA0
LDEwICsxMjgsOSBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qgcm9ja2NoaXBfc2FyYWRjX2lzcihpbnQg
aXJxLCB2b2lkICpkZXZfaWQpCj4gPiA+ICAKPiA+ID4gIAkvKiBSZWFkIHZhbHVlICovCj4gPiA+
ICAJaW5mby0+bGFzdF92YWwgPSByZWFkbF9yZWxheGVkKGluZm8tPnJlZ3MgKyBTQVJBRENfREFU
QSk7Cj4gPiA+IC0JaW5mby0+bGFzdF92YWwgJj0gR0VOTUFTSyhpbmZvLT5kYXRhLT5udW1fYml0
cyAtIDEsIDApOwo+ID4gPiArCWluZm8tPmxhc3RfdmFsICY9IEdFTk1BU0soaW5mby0+bGFzdF9j
aGFuLT5zY2FuX3R5cGUucmVhbGJpdHMgLSAxLCAwKTsKPiA+ID4gIAo+ID4gPiAtCS8qIENsZWFy
IGlycSAmIHBvd2VyIGRvd24gYWRjICovCj4gPiA+IC0Jd3JpdGVsX3JlbGF4ZWQoMCwgaW5mby0+
cmVncyArIFNBUkFEQ19DVFJMKTsKPiA+ID4gKwlyb2NrY2hpcF9zYXJhZGNfcG93ZXJfZG93bihp
bmZvKTsKPiA+ID4gIAo+ID4gPiAgCWNvbXBsZXRlKCZpbmZvLT5jb21wbGV0aW9uKTsKPiA+ID4g
IAo+ID4gPiBAQCAtMTE4LDUxICsxNDEsNTUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpaW9faW5m
byByb2NrY2hpcF9zYXJhZGNfaWlvX2luZm8gPSB7Cj4gPiA+ICAJLnJlYWRfcmF3ID0gcm9ja2No
aXBfc2FyYWRjX3JlYWRfcmF3LAo+ID4gPiAgfTsKPiA+ID4gIAo+ID4gPiAtI2RlZmluZSBBRENf
Q0hBTk5FTChfaW5kZXgsIF9pZCkgewkJCQlcCj4gPiA+ICsjZGVmaW5lIEFEQ19DSEFOTkVMKF9p
bmRleCwgX2lkLCBfcmVzKSB7CQkJXAo+ID4gPiAgCS50eXBlID0gSUlPX1ZPTFRBR0UsCQkJCQlc
Cj4gPiA+ICAJLmluZGV4ZWQgPSAxLAkJCQkJCVwKPiA+ID4gIAkuY2hhbm5lbCA9IF9pbmRleCwJ
CQkJCVwKPiA+ID4gIAkuaW5mb19tYXNrX3NlcGFyYXRlID0gQklUKElJT19DSEFOX0lORk9fUkFX
KSwJCVwKPiA+ID4gIAkuaW5mb19tYXNrX3NoYXJlZF9ieV90eXBlID0gQklUKElJT19DSEFOX0lO
Rk9fU0NBTEUpLAlcCj4gPiA+ICAJLmRhdGFzaGVldF9uYW1lID0gX2lkLAkJCQkJXAo+ID4gPiAr
CS5zY2FuX2luZGV4ID0gX2luZGV4LAkJCQkJXAo+ID4gPiArCS5zY2FuX3R5cGUgPSB7CQkJCQkJ
XAo+ID4gPiArCQkuc2lnbiA9ICd1JywJCQkJCVwKPiA+ID4gKwkJLnJlYWxiaXRzID0gX3JlcywJ
CQkJXAo+ID4gPiArCQkuc3RvcmFnZWJpdHMgPSAxNiwJCQkJXAo+ID4gPiArCQkuZW5kaWFubmVz
cyA9IElJT19MRSwJCQkJXAo+ID4gPiArCX0sCQkJCQkJCVwKPiA+ID4gIH0KPiA+ID4gIAo+ID4g
PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpaW9fY2hhbl9zcGVjIHJvY2tjaGlwX3NhcmFkY19paW9f
Y2hhbm5lbHNbXSA9IHsKPiA+ID4gLQlBRENfQ0hBTk5FTCgwLCAiYWRjMCIpLAo+ID4gPiAtCUFE
Q19DSEFOTkVMKDEsICJhZGMxIiksCj4gPiA+IC0JQURDX0NIQU5ORUwoMiwgImFkYzIiKSwKPiA+
ID4gKwlBRENfQ0hBTk5FTCgwLCAiYWRjMCIsIDEwKSwKPiA+ID4gKwlBRENfQ0hBTk5FTCgxLCAi
YWRjMSIsIDEwKSwKPiA+ID4gKwlBRENfQ0hBTk5FTCgyLCAiYWRjMiIsIDEwKSwKPiA+ID4gIH07
Cj4gPiA+ICAKPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfc2FyYWRjX2RhdGEg
c2FyYWRjX2RhdGEgPSB7Cj4gPiA+IC0JLm51bV9iaXRzID0gMTAsCj4gPiA+ICAJLmNoYW5uZWxz
ID0gcm9ja2NoaXBfc2FyYWRjX2lpb19jaGFubmVscywKPiA+ID4gIAkubnVtX2NoYW5uZWxzID0g
QVJSQVlfU0laRShyb2NrY2hpcF9zYXJhZGNfaWlvX2NoYW5uZWxzKSwKPiA+ID4gIAkuY2xrX3Jh
dGUgPSAxMDAwMDAwLAo+ID4gPiAgfTsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBpaW9fY2hhbl9zcGVjIHJvY2tjaGlwX3JrMzA2Nl90c2FkY19paW9fY2hhbm5lbHNbXSA9IHsK
PiA+ID4gLQlBRENfQ0hBTk5FTCgwLCAiYWRjMCIpLAo+ID4gPiAtCUFEQ19DSEFOTkVMKDEsICJh
ZGMxIiksCj4gPiA+ICsJQURDX0NIQU5ORUwoMCwgImFkYzAiLCAxMiksCj4gPiA+ICsJQURDX0NI
QU5ORUwoMSwgImFkYzEiLCAxMiksCj4gPiA+ICB9Owo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IHJvY2tjaGlwX3NhcmFkY19kYXRhIHJrMzA2Nl90c2FkY19kYXRhID0gewo+ID4g
PiAtCS5udW1fYml0cyA9IDEyLAo+ID4gPiAgCS5jaGFubmVscyA9IHJvY2tjaGlwX3JrMzA2Nl90
c2FkY19paW9fY2hhbm5lbHMsCj4gPiA+ICAJLm51bV9jaGFubmVscyA9IEFSUkFZX1NJWkUocm9j
a2NoaXBfcmszMDY2X3RzYWRjX2lpb19jaGFubmVscyksCj4gPiA+ICAJLmNsa19yYXRlID0gNTAw
MDAsCj4gPiA+ICB9Owo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGlpb19jaGFu
X3NwZWMgcm9ja2NoaXBfcmszMzk5X3NhcmFkY19paW9fY2hhbm5lbHNbXSA9IHsKPiA+ID4gLQlB
RENfQ0hBTk5FTCgwLCAiYWRjMCIpLAo+ID4gPiAtCUFEQ19DSEFOTkVMKDEsICJhZGMxIiksCj4g
PiA+IC0JQURDX0NIQU5ORUwoMiwgImFkYzIiKSwKPiA+ID4gLQlBRENfQ0hBTk5FTCgzLCAiYWRj
MyIpLAo+ID4gPiAtCUFEQ19DSEFOTkVMKDQsICJhZGM0IiksCj4gPiA+IC0JQURDX0NIQU5ORUwo
NSwgImFkYzUiKSwKPiA+ID4gKwlBRENfQ0hBTk5FTCgwLCAiYWRjMCIsIDEwKSwKPiA+ID4gKwlB
RENfQ0hBTk5FTCgxLCAiYWRjMSIsIDEwKSwKPiA+ID4gKwlBRENfQ0hBTk5FTCgyLCAiYWRjMiIs
IDEwKSwKPiA+ID4gKwlBRENfQ0hBTk5FTCgzLCAiYWRjMyIsIDEwKSwKPiA+ID4gKwlBRENfQ0hB
Tk5FTCg0LCAiYWRjNCIsIDEwKSwKPiA+ID4gKwlBRENfQ0hBTk5FTCg1LCAiYWRjNSIsIDEwKSwK
PiA+ID4gIH07Cj4gPiA+ICAKPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfc2Fy
YWRjX2RhdGEgcmszMzk5X3NhcmFkY19kYXRhID0gewo+ID4gPiAtCS5udW1fYml0cyA9IDEwLAo+
ID4gPiAgCS5jaGFubmVscyA9IHJvY2tjaGlwX3JrMzM5OV9zYXJhZGNfaWlvX2NoYW5uZWxzLAo+
ID4gPiAgCS5udW1fY2hhbm5lbHMgPSBBUlJBWV9TSVpFKHJvY2tjaGlwX3JrMzM5OV9zYXJhZGNf
aWlvX2NoYW5uZWxzKSwKPiA+ID4gIAkuY2xrX3JhdGUgPSAxMDAwMDAwLAo+ID4gPiBAQCAtMTkz
LDYgKzIyMCw0MiBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9zYXJhZGNfcmVzZXRfY29udHJvbGxl
cihzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcmVzZXQpCj4gPiA+ICAJcmVzZXRfY29udHJvbF9kZWFz
c2VydChyZXNldCk7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gK3N0YXRpYyBpcnFyZXR1cm5fdCBy
b2NrY2hpcF9zYXJhZGNfdHJpZ2dlcl9oYW5kbGVyKGludCBpcnEsIHZvaWQgKnApCj4gPiA+ICt7
Cj4gPiA+ICsJc3RydWN0IGlpb19wb2xsX2Z1bmMgKnBmID0gcDsKPiA+ID4gKwlzdHJ1Y3QgaWlv
X2RldiAqaV9kZXYgPSBwZi0+aW5kaW9fZGV2Owo+ID4gPiArCXN0cnVjdCByb2NrY2hpcF9zYXJh
ZGMgKmluZm8gPSBpaW9fcHJpdihpX2Rldik7Cj4gPiA+ICsJc3RydWN0IHsKPiA+ID4gKwkJdTE2
IHZhbHVlc1tTQVJBRENfQlVGRkVSX05VTV9VMTZdOwo+ID4gPiArCQlpbnQ2NF90IHRpbWVzdGFt
cDsKPiA+ID4gKwl9IGRhdGE7Cj4gPiA+ICsJaW50IHJldDsKPiA+ID4gKwlpbnQgaSwgaiA9IDA7
Cj4gPiA+ICsKPiA+ID4gKwltdXRleF9sb2NrKCZpX2Rldi0+bWxvY2spOwo+ID4gPiArCj4gPiA+
ICsJZm9yX2VhY2hfc2V0X2JpdChpLCBpX2Rldi0+YWN0aXZlX3NjYW5fbWFzaywgaV9kZXYtPm1h
c2tsZW5ndGgpIHsKPiA+ID4gKwkJY29uc3Qgc3RydWN0IGlpb19jaGFuX3NwZWMgKmNoYW4gPSAm
aV9kZXYtPmNoYW5uZWxzW2ldOwo+ID4gPiArCj4gPiA+ICsJCXJldCA9IHJvY2tjaGlwX3NhcmFk
Y19jb252ZXJzaW9uKGluZm8sIGNoYW4pOwo+ID4gPiArCQlpZiAocmV0KSB7Cj4gPiA+ICsJCQly
b2NrY2hpcF9zYXJhZGNfcG93ZXJfZG93bihpbmZvKTsKPiA+ID4gKwkJCWdvdG8gb3V0Owo+ID4g
PiArCQl9Cj4gPiA+ICsKPiA+ID4gKwkJZGF0YS52YWx1ZXNbal0gPSBpbmZvLT5sYXN0X3ZhbDsK
PiA+ID4gKwkJaisrOwo+ID4gPiArCX0KPiA+ID4gKwo+ID4gPiArCWlpb19wdXNoX3RvX2J1ZmZl
cnNfd2l0aF90aW1lc3RhbXAoaV9kZXYsICZkYXRhLCBpaW9fZ2V0X3RpbWVfbnMoaV9kZXYpKTsK
PiA+ID4gK291dDoKPiA+ID4gKwltdXRleF91bmxvY2soJmlfZGV2LT5tbG9jayk7Cj4gPiA+ICsK
PiA+ID4gKwlpaW9fdHJpZ2dlcl9ub3RpZnlfZG9uZShpX2Rldi0+dHJpZyk7Cj4gPiA+ICsKPiA+
ID4gKwlyZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gIHN0YXRpYyBp
bnQgcm9ja2NoaXBfc2FyYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
PiA+ICB7Cj4gPiA+ICAJc3RydWN0IHJvY2tjaGlwX3NhcmFkYyAqaW5mbyA9IE5VTEw7Cj4gPiA+
IEBAIC0yMjEsNiArMjg0LDExIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc2FyYWRjX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ICAKPiA+ID4gIAlpbmZvLT5kYXRhID0g
bWF0Y2gtPmRhdGE7Cj4gPiA+ICAKPiA+ID4gKwlpZiAoaW5mby0+ZGF0YS0+bnVtX2NoYW5uZWxz
ID4gU0FSQURDX01BWF9DSEFOTkVMUykgewo+ID4gPiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJt
YXggY2hhbm5lbHMgZXhjZWVkZWQiKTsKPiA+ID4gKwkJcmV0dXJuIC1FSU5WQUw7ICAKPiA+IAo+
ID4gSG93IGNhbiB0aGF0IGhhcHBlbj8gIEJ1ZyBpbiB0aGUgYWRkaXRpb24gb2YgYSBuZXcgZGV2
aWNlIHR5cGU/Cj4gPiBJZiBpdCdzIGp1c3QgcGFyYW5vaWEgYWdhaW5zdCBmdXR1cmUgY29kZSwg
cGVyaGFwcyBhZGQgYSBjb21tZW50IHRvCj4gPiBzYXkgdGhhdC4gIAo+IAo+IHllcCB0aGF0IGlz
ICJwYXJhbm9pYSIgZm9yIHRoZSBjYXNlIHNvbWVvbmUgYWRkcyBhIGZhbmN5IG5ldyAyMCBjaGFu
bmVsCj4gc2FyYWRjIHZhcmlhbnQgYW5kIGZvcmdldHMgdG8gYWRhcHQgdGhlIGNvbnN0YW50Lgo+
IAo+IEknbGwgYWRkIGEgY29tbWVudC4KPiAKPiA+ICAgCj4gPiA+ICsJfQo+ID4gPiArCj4gPiA+
ICAJbWVtID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsK
PiA+ID4gIAlpbmZvLT5yZWdzID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2LT5kZXYsIG1l
bSk7Cj4gPiA+ICAJaWYgKElTX0VSUihpbmZvLT5yZWdzKSkKPiA+ID4gQEAgLTMxNSw2ICszODMs
MTIgQEAgc3RhdGljIGludCByb2NrY2hpcF9zYXJhZGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiA+ID4gIAlpbmRpb19kZXYtPmNoYW5uZWxzID0gaW5mby0+ZGF0YS0+Y2hh
bm5lbHM7Cj4gPiA+ICAJaW5kaW9fZGV2LT5udW1fY2hhbm5lbHMgPSBpbmZvLT5kYXRhLT5udW1f
Y2hhbm5lbHM7Cj4gPiA+ICAKPiA+ID4gKwlyZXQgPSBkZXZtX2lpb190cmlnZ2VyZWRfYnVmZmVy
X3NldHVwKCZpbmRpb19kZXYtPmRldiwgaW5kaW9fZGV2LCBOVUxMLAo+ID4gPiArCQkJCQkgICAg
ICByb2NrY2hpcF9zYXJhZGNfdHJpZ2dlcl9oYW5kbGVyLAo+ID4gPiArCQkJCQkgICAgICBOVUxM
KTsKPiA+ID4gKwlpZiAocmV0KQo+ID4gPiArCQlnb3RvIGVycl9jbGs7Cj4gPiA+ICsgIAo+ID4g
Cj4gPiBQbGVhc2UgYXZvaWQgbWl4aW5nIGFuIG1hdGNoaW5nIGJldHdlZW4gZGV2aWNlIG1hbmFn
ZWQgYW4gdW5tYW5hZ2VkIGludGVyZmFjZXMuCj4gPiBJdCBtZWFucyB0aGUgZHJpdmVyIGlzIG5v
dCAnb2J2aW91c2x5IGNvcnJlY3QnIGFuZCBoZW5jZSBoYXJkZXIgdG8gcmV2aWV3Lgo+ID4gCj4g
PiBUd28gY2hvaWNlcyBoZXJlLiAgRWl0aGVyIHVzZSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQg
dG8gYXV0b21hdGljYWxseQo+ID4gZGlzYWJsZSBlYWNoIGNsb2NrICsgcmVndWxhdG9yIGluIHRo
ZSBtYW5hZ2VkIHJlbGVhc2UgcGF0aCwgZHJvcCBhbGwgdGhlIGVycm9yCj4gPiBoYW5kbGluZyBh
bmQgcmVtb3ZlIChub3RlIHRoaXMgc2hvdWxkIGJlIGEgcHJlY3Vyc29yIHBhdGNoKSwgb3IgdXNl
Cj4gPiBpaW9fdHJpZ2dlcmVkX2J1ZmZlcl9zZXR1cCBhbmQgbWFudWFsbHkgY2FsbCBpaW9fdHJp
Z2dlcmVkX2J1ZmZlcl9jbGVhbnVwCj4gPiBpbiB0aGUgcmlnaHQgcGxhY2UgaW4gdGhlIHJlbW92
ZSBmdW5jdGlvbi4gIAo+IAo+IEknbGwgZ28gd2l0aCB0aGUgZGV2bV8qIGFwcHJvYWNoLCBsZXNz
IGNvbXBsZXhpdHkgaXMgYmV0dGVyIHRoYW4gYWRkaW5nIG1vcmUgOy0pCj4gCj4gCj4gSGVpa28K
PiAKPiA+ID4gIAlyZXQgPSBpaW9fZGV2aWNlX3JlZ2lzdGVyKGluZGlvX2Rldik7Cj4gPiA+ICAJ
aWYgKHJldCkKPiA+ID4gIAkJZ290byBlcnJfY2xrOyAgCj4gPiAKPiA+ICAgCj4gCj4gCj4gCj4g
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
