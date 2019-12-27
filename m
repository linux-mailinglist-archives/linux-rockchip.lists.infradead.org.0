Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E747312B3E6
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 11:30:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7empZnRDbwEMsP9GhXhbWm9xoB5Q0t4O+yLI3h9NFk=; b=E7OvbEsYMAEKoT
	pu2occauGDIb6mVXQy4A9DeQMcSGirbJ/LWjEc+43L3IEURZmAUJR/zq/a+LG5xY23C92Dh9FvLYP
	FsyNj2i4w2VW3v7R4/qOc1h9ds9Yxin02nT+84bSRVdqxPnWvFSwtiFiLfVYoioPCOi1vGxJFnQL3
	j9nqgXexPRwX9kHzOESOO1UHH4JBQgwY/mwKu/x6E2a2aroop+3qrzEmEXkMvF32EVA57UCsj1r8M
	ai+ftAuYG/2b5dFS3QOZHKG9XEvFCWILU1QlfE4e8ofgPxMSpSf611oP6x36bNb8UGBGxAxlugTU4
	kuXdjtHqK8fVd1zNYFhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikmsv-0002Cz-PV; Fri, 27 Dec 2019 10:30:21 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikmst-0002BI-9Q
 for linux-rockchip@lists.infradead.org; Fri, 27 Dec 2019 10:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1577442607;
 bh=B5OTfK+RhKQiRqbKmJ+9brAcTdasW/mE83bgbjxI5ko=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Q/s36+qLLu091YXe6IRAqzAiNDkELmtYqu+l8yAvW67AbTGVw5b8DHr0IAo0lB5Bg
 PXe0sYktpkvXaC/2iJ5IX+zpP6vK0YQImu9tWKR1bp8PK2vnF5fVSmo80DdzaMjgMA
 S44/oStIcccrIPnVAxLY/30uDFM6efPewbiC4cWs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([78.54.38.237]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LgpVS-1jWVpJ0dL4-00oCQo; Fri, 27
 Dec 2019 11:30:07 +0100
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Jagan Teki <jagan@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
Date: Fri, 27 Dec 2019 11:30:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:3Yyv6Y+t4qtQHYEv4nMhi/znglE1OZoM2O84rQ6KadSbEsHnIPN
 los78yxqzvdWB3qqIX9GHVeEx+twHayzZAVG4jCv2mYrcIRcgWhJKm1szk4snUpl6kv6gK8
 xTidfoJjvHext4uDVApB9/o7xcTrPPZeDFEv1qYfjIlSQZpRtonEKSkEPLK+y6tm0xo5zOv
 Ir+jY5839sJAJhOwjj0fA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L+zoQUCQdXU=:gZ1cpYSbQNdClfT+SfUk7Q
 X/lETrwWwWC3sDlq9xacr4Qc67pAW2RrrzaaYbLt2srTbkKAidk8BqniTzNcDIWph6Q6FCFES
 ZA1JbDrRYR5WAY8cBAUQO8SqI7mzqCARhtNdtj3Wc22J3ZLGg7nm4dxxmstlSo0y3BPl9Fv5D
 QZ7g2QfnotnjZ9M5FnsEVaW4tuCLtTb9K4y4hA8CPB1q3BCJ5ya0qsLwKVVNCuxBY25qXS3LB
 PmWBpEKxhZwmfW76uedQ1uyur9yx2nVDH2iWL3dsVjBex+3IdAbiW7NmNgl6eraArCWIPhdSh
 NUykmpElWqNvyf0vqe+cy84obKAymB3ShvDX6ZLWWYfXoWCeY04ybzJ+3b6xfaMI92ELsznkc
 pQ9sXxz9ZBm0sP+jkxD0Rn4n5xzei3nHHdItygmcn5+cyC64kmx+ocoE/DKGr6zN9/RfyGPop
 1Vpft71XMYkac3nkKiEhIhU/lO/+JGsJPfaOcpAIK8yggVNQLzKVmAiZJCWKwfQl3+ZWAYKv6
 rfK76p3iRCoC4WbPikLT0JOr/ta41HAseG4XlM95o8AjhbkWeN4GncXJxhFImyMjOTklu1lXR
 0bnRHf+yiTi6wMBE16GlMhYRzNpqf/AYUGahSUG20+C9T0g3MTTG6O87xrvySeTrLKpgv7fil
 L96baoqoK8aGxFXQlUcXmJVKJaiph79PPO1iujOnZOyKf5aLPk7pBM9WhjFzwguMJxM/0KT5r
 bAq/wYO/zJtLi7qegBXHEkl3+ZCz+lAl4NMkmzmGmp4yeQIHT75C2BOdlc8fUJytwQFScQ9rd
 d+2lCy76M5CDLnMOcDPltpeEuJu7NT5pySnOYzketqns4RXcoHdXAR0Vowi4yK2GdYTiOWnmn
 3eeqDzMVaKo4ysDOOxUdX6jmAsNeHMFXBw424VltirkmME6Tz+nTc2tyKgK8cIAV2+scagkze
 dg0Odkb34CT0xUxHeXmkg5Mf9s+M+OJ4lR1SvuOYri7XNBDzxptEkPRSiC4sqKOYH1S/4IZib
 5SjgD4u8SN1YgsQA6drxVV1METNeDno21vuS719GMoX50fTIVzscZCXzqyY6rggxwkn/OD0Wj
 Yjve+mYZarjeBECjdw4ig13FRg4kmyvbOFzJmGnmSoX97yEQ7IQEk4GcG2HzK4RN15TqNmoPd
 rQdb1XCU0Ftl9lOzM8MivlwKwSas6um6e44J/PNscjGWk14v9At3ClOkioeamnC7RXkz+W7P7
 JKdCyUh3maXD6bSUg5bjy76Y+NzNyt/fipk4A4Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_023019_665908_00BB58F4 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.11 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkhCgpPbiAyNy4xMi4xOSAwNzo1MCwgSmFnYW4gVGVraSB3cm90ZToKPiBIaSBLZXZlciwKPgo+
IE9uIE1vbiwgRGVjIDIzLCAyMDE5IGF0IDg6MDQgQU0gS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0By
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IEphZ2FuLAo+Pgo+Pgo+PiBPbiAyMDE5LzEyLzIx
IOS4i+WNiDM6NTQsIEphZ2FuIFRla2kgd3JvdGU6Cj4+PiBNb3N0IG9mIHRoZSBTUEkgZmxhc2gg
ZGV2aWNlcyBpbiByb2NrY2hpcCBhcmUgMTZNaUIgc2l6ZS4KPj4+Cj4+PiBTbywga2VlcGluZyBV
LUJvb3QgcHJvcGVyIG9mZnNldCBzdGFydCBmcm9tIDEyOE1pQiB3aXRoIDFNaUIKPj4+IHNpemUg
YW5kIHRoZW4gc3RhcnQgZW52IG9mIDhLaUIgd291bGQgYmUgYSBjb21wYXRpYmxlIGxvY2F0aW9u
Cj4+PiBiZXR3ZWVuIGFsbCB2YXJpYW50cyBvZiBmbGFzaCBzaXplcy4KPj4+Cj4+PiBUaGlzIHBh
dGNoIGFkZCBlbnYgc3RhcnQgZnJvbSAweDE0MDAwIHdpdGggYSBzaXplIG9mIDhLaUIuCj4+Cj4+
IFdoYXQncyB0aGUgc3BhY2UgbWFwIGluIFNQSSBmbGFzaCBzdXBwb3NlIHRvIGJlPyBJbmNsdWRp
bmcKPj4gdHBsL3NwbC91LWJvb3QuaXRiCj4+Cj4+IEkgd291bGQgcHJlZmVyIHRvIHVzZSAxMjhL
aUItOEtpQiBhcyB0aGUgZW52IHN0YXJ0IGFkZHJlc3MsIHdlJ2QgYmV0dGVyCj4+IHRvIGF2b2lk
IHRoZQo+Pgo+PiByaXNrIG9mIG92ZXJsYXAgYmV0d2VlbiB0aGUgZW52IHNwYWNlIGFuZCB0aGUg
ZmlybXdhcmUgc3BhY2UuCj4KPiBIZXJlIGlzIHRoZSAxNk1pQiBmbGFzaCBsYXlvdXQsIEkgaGF2
ZSB1c2VkLiBJIGNhbiBzZWUgdGhlIGxvYWRlcjEKPiAodHBsL3NwbCkgY2FuIGJlIHBvc3NpYmxl
IHRvIGxvYWQgYXQgMHgwIG9yIDB4MzJLIHNvIEkgaGF2ZSBnaXZlbiB0aGUKPiBzcGFjZSBmb3Ig
aXQuIGFuZCA4SyBlbnYgYWZ0ZXIgbG9hZGVyMih1LWJvb3QpLiBsZXQgbWUga25vdyB5b3VyCj4g
dGhvdWdodHM/CgpXaHkgd2UgY2Fubm90IHVzZSB0aGUgc2FtZSBsYXlvdXQgYXMgd2hhdCBpcyBk
ZWZpbmVkIGZvciBTRC9lTU1DOgpodHRwOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS93aWtp
X1BhcnRpdGlvbnMKCgoKPgo+ICAgICAgICAgICAweDAgLSAweDgwMDAsICAgICAgIDMySyAgPT4g
IHJlc2VydmVkL2xvYWRlcjEKPiAgICAgMHg4MDAwIC0gMHg0MDAwMCwgICAgMjI0SyA9PiAgbG9h
ZGVyMQo+ICAgMHg0MDAwMCAtIDB4MTQwMDAwLCAgICAxTSAgPT4gIGxvYWRlcjIKPiAweDE0MDAw
MCAtIDB4MTQyMDAwLCAgICA4SyAgPT4gICBlbnYKPiAweDE0MjAwMCAtIDB4ODQyMDAwLCAgICA3
TSAgPT4gIGtlcm5lbAo+IDB4ODQyMDAwIC0gMHg4NTM4MDAsICAxMDBLID0+ICBkdGIKPiAweDg1
MzgwMCAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICA9PiAgcm9vdAoKVGhlc2Ugc21hbGwg
bG9hZGVyMS9sb2FkZXIyIHBhcnRpdGlvbnMgbWF5IGJ5dGUgdXMgbGF0ZXIgd2hlbiBuZXdlcgp1
LWJvb3QgdmVyc2lvbnMgb25seSB3aWxsIGZpdCBmb3IgU0QgYW5kIG5vdCBmb3IgU1BJIGFueW1v
cmUuCgpUaGUgcmVzZXJ2ZWQgc3BhY2UgZm9yIGtlcm5lbCBpcyBhbHJlYWR5IHRvbyBzbWFsbCBm
b3Igbm9ybWFsIGtlcm5lbApidWlsZHMgdG9kYXksIG5vdCB0byBtZW50aW9uIGEgcm9vdCBmaWxl
c3lzdGVtLgoKQXJlIHRoZXJlIGFueSB1c2UgY2FzZXMgd2hlcmUgc29tZWJvZHkgbmVlZHMgdG8g
cGxhY2UgYm9vdCBhbmQgcm9vdApwYXJ0aXRpb25zIG9uIFNQSSBmbGFzaD8KClJlZ2FyZHMsClNv
ZXJlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
