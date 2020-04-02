Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC1D19C48D
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujjnrTTELcH27Zfad5uuB8UP+4s6bDaoS3gg4DvuubA=; b=B9s4hg9KYArBnh
	loF0hvUA9nf0IpD8u/+YxzmSUkxuLjj7tPYJYLgH/4NPM8rpRmAPzE9aNAB3fZld67ZK2rBsG4J7+
	vXiiPnac7RK4i5q/Pw0NwXAZ/lN7z4KlO5k8IY3H43tPBb6KFKu4lvtCI4xL7LcV/KEtJKku6t5NH
	GcvF6djE13IuIQIY/YGY4RI4b6yu+yF6Ysh1p+nFjUufb3xYvyS2KquSGt+/OGZQlCmwEXFzSPsvh
	HKAIWJ3qPNK8ZQ1vdas+NKo7omk55nBLB0aPUI8KWzQ2fyQSCw9Judu23eTUrH+zBzDwGoerO4F0s
	GGqPZX3PRjSGyT7O4pZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK13w-0007uE-KL; Thu, 02 Apr 2020 14:43:20 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK13t-0007t7-7l
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:43:19 +0000
Received: by mail-qk1-f194.google.com with SMTP id h14so4154458qke.5
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 07:43:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Sf8xIW95po41MsNtorwWl8pTLbgWf5KTPswmS5tTSsU=;
 b=R3S6Vo3JXI9GRdytf1iLnjw3K9pb50MnzTFXiTN8NxaD72EJaPH10NtxSiZwDAHyJb
 pvevU0lqVDB9U07vhOBtuaKG5RrtmSFKgKHhkZefsykDANKwFsZfT9HdK3DVcAICzEzC
 021tzDmjS/MpEU1IjXW0hOPhtv/hrtkuFn+zD0O5DfFXI84QHGmIFk2+cWo0rpR6x9Q4
 FtRGTpl0Gf1LmlWizbn7wWyG/zsZdWaswX1ujVlheMrBCa7U+IqfjZ0ncIEdtk8xbOju
 lPgrnzeiDSY92QRN+m+YERxqxVLs+hwYlkdDaLD/oTCsVj03xmVFXngAlUyAHJJjD/4x
 hMSA==
X-Gm-Message-State: AGi0PuZ+wMmyfqJ0NYVq4bCx2jNY+NmQlggSJGKNy3zghhmIScrywbp8
 mc2XC/z+7pxlpi7lTD/mVq8=
X-Google-Smtp-Source: APiQypLgY4tJeyyCC6GdSOIL8CordFKveXDU9v51XGmiU1NOSceqRS3uwwpK4nCiEdIek1LdlDKtRg==
X-Received: by 2002:a37:4648:: with SMTP id t69mr3604208qka.299.1585838595746; 
 Thu, 02 Apr 2020 07:43:15 -0700 (PDT)
Received: from ?IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d?
 ([2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 by smtp.gmail.com with ESMTPSA id l7sm3630805qkb.47.2020.04.02.07.43.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 07:43:14 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com> <105956984.FXDh2DO4ZE@diego>
From: Helen Koike <helen@koikeco.de>
Message-ID: <2fa1b497-509a-d02f-b893-058639655133@koikeco.de>
Date: Thu, 2 Apr 2020 11:43:08 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <105956984.FXDh2DO4ZE@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_074317_276115_D304DCA0 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [helen.fornazier[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiA0LzIvMjAgMTE6MzEgQU0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERvbm5l
cnN0YWcsIDIuIEFwcmlsIDIwMjAsIDE1OjQ4OjAyIENFU1Qgc2NocmllYiBKb2hhbiBKb25rZXI6
Cj4+IEhpIEhlbGVuLAo+Pgo+Pj4gRnJvbTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxh
Ym9yYS5jb20+Cj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kK
Pj4+IGluZGV4IDMzY2MyMWZjZjRjMTAuLmZjMDI5NWQyYTY1YTEgMTAwNjQ0Cj4+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+PiBAQCAtMTM5NCw2ICsxMzk0LDE3
IEBAIGlvX2RvbWFpbnM6IGlvLWRvbWFpbnMgewo+Pj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
Cj4+PiAgCQl9Owo+Pj4gIAo+Pgo+Pj4gKwkJbWlwaV9kcGh5X3J4MDogbWlwaS1kcGh5LXJ4MCB7
Cj4+Cj4+IEZvciBIZWlrbyBzb3J0IHN5c2NvbkBmZjc3MDAwMCBzdWJub2RlcyBhbHBoYWJldGlj
YWwgb3IgcmVnIHZhbHVlIGZpcnN0Pwo+IAo+IFNpbWlsYXIgdG8gbWFpbiBub2RlcyAuLi4gc28g
dGhpbmdzIHdpdGhvdXQgcmVnIGFscGhhYmV0aWNhbCwKPiB0aGUgcmVzdCBieSByZWcgYWRkcmVz
cwo+IAo+IAo+Pgo+Pj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LW1pcGktZHBo
eS1yeDAiOwo+Pj4gKwkJCWNsb2NrcyA9IDwmY3J1IFNDTEtfTUlQSURQSFlfUkVGPiwKPj4KPj4+
ICsJCQkJPCZjcnUgU0NMS19EUEhZX1JYMF9DRkc+LAo+Pj4gKwkJCQk8JmNydSBQQ0xLX1ZJT19H
UkY+Owo+Pgo+PiBBbGlnbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCgphY2suCgpUaGFu
a3MKSGVsZW4KCj4+Cj4+PiArCQkJY2xvY2stbmFtZXMgPSAiZHBoeS1yZWYiLCAiZHBoeS1jZmci
LCAiZ3JmIjsKPj4+ICsJCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzMzOTlfUERfVklPPjsK
Pj4+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+Pj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+
PiArCQl9Owo+Pj4gKwo+Pj4gIAkJdTJwaHkwOiB1c2IyLXBoeUBlNDUwIHsKPj4+ICAJCQljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS11c2IycGh5IjsKPj4+ICAJCQlyZWcgPSA8MHhlNDUw
IDB4MTA+Owo+Pgo+Pgo+IAo+IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
