Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD766766A
	for <lists+linux-rockchip@lfdr.de>; Sat, 13 Jul 2019 00:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ma/aESdYTE70BKVYrCyV1w15Lp5v/+Zl3xF/mj9BOPs=; b=bqHH5HHLeBEMvrnAp4rmnK7c9
	MI40bDP9Qy68GIJpITJZHsX7UkyS8cJoiJ42tRfMv75k+OeFUF2HI3tTR/j2L6sZRMpNlRzY3uvqc
	NLNAF4R4zKa/FlpUiS8Tlaa0jFEa4VSZDJBOahXP8dzLNs7NGFAUvY+5yQPcXn+S18Gmj7N4l8RrQ
	HTXE4jvlN6BTJMpDIFogyfUAxJgt10HLjXDztXKUhJWf27qElhyc397KQoAMmBg/3E/6EZaPb9T+r
	NHPgrUmqmHxcMlC0hhP4mpD1KM2z2lP420o3I+ZxQOKn5BmJX0zutWh2v1wxJcaBsGHmmzoR46WHi
	RhF8Hl9Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm3hn-0007IJ-PZ; Fri, 12 Jul 2019 22:07:51 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm3hj-0007Hl-PA
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 22:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562969259;
 bh=fq3Eu2ziIA671I7SsmDCF6l1LQRFKArhSLSl56LX2rE=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=i0yJjUJOIPQQBV5nUDzcy6lcuiN7rQx29HsMp5wlv6/vesemvblZ+W9nQ4nMMc6q2
 guUpTeEeT9vn/x5V0m4iZ548l15BakVVxtibcVwGdfDjeyvwdMC0R7eqwpUujM7C85
 SNDMWbWQJ6eGwFBPl2MG8AA8lwnCY+emlev3DV1I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.18] ([82.19.195.159]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MCsQ4-1hdIGB1sga-008olC; Sat, 13
 Jul 2019 00:07:39 +0200
Subject: Re: Asus C101P Chromeboot fails to boot with Linux 5.2
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: Emil Renner Berthing <kernel@esmil.dk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
 <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
Message-ID: <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
Date: Fri, 12 Jul 2019 23:07:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
Content-Language: en-US
X-Provags-ID: V03:K1:wM6J7pCtfh2xM9icqBRa8aCSzjrU4kNCO9rWjhjgxXlj1P34JwA
 s2sLTX6BkjnBIeUDAYpI0G7I9TSJfUy6Mc2HEGBP+Z8WQUoFiRsGlBqtVHJtbX/7AeCL3h+
 3Nrn1KH6hcjKZbTsmxpNK5FLggvEq2ejKQCmxu9gB4+QcabipEirpdj9LpDrZ6yrqt5gms+
 uLy9VPtyC8f9GRW8+GLig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Uc0Z/ZQQ3QM=:x7qcb3W6leQ49tXe59YmvK
 dbpxxswm5QMx2N6gQz3JnrgUHezku28Jjowo8HE23fOWTUIRUWqPPMmqPJGRSJ6Es5ffl5zHP
 t4U8/ftDE9RmYtdhNeahPEC5QqT59m0ZRocLm2RHVCi3xoyrvwmZw+DxJSXIgKAL4LLJ0gjku
 LQfcBqiOQH0mRihOqLT2h+gA3zSRBYgyvj/n1t7+rGRb8zHKGUMC10LexjsZKPELFjQ6cL99N
 Ty7HSAyZ2AY9CVJpyhE3dbqs3F+/QW3J9TIYfUXS3ehkV04FNwkyzX5zM9YDpGhZT075BXKKV
 tKvIfjN43UVRQobDa+MsRimMp8aU4h41WAXmUK7o9gcpY88ni3oxof+9mI41zAfbyzGd6Intx
 0p+kbthPMgWuVTrPyTj3YnQQ4NWL9arCxBdU5Hns3xWkt0Keya924xp0a0KparYfc+TbRQ8gf
 umTOYKibTIZOZJEmZ137d0KlEfvdRY8qoGv4abUrpaIuTUU7iqi6k+256XXwBUdmNkun5qrkR
 ldBFYlae8cO+Ckxt8gwuvy0rh/QCjIkHKDj9yTLMQ5hOom/3zkO8aMzl4om/2ce+LJjPTE4Q+
 11RftmSHaHc7dGsOaxdoScTiYnZQrHnr5h5LstJ+vBVwIJ9kqyhSmMG303cFpD0phlu07LQHv
 P7UCYwjiN/whfIb9ZTIibWPoNyd/jSjg4iqRQN6vnDgOl5e10n2Od8TeiGZ3e+3s4e81s0Z9/
 zwpcYmvJ23ripEc2G83B8r5EEmJdAW/TayJ879MZcnFuYsSokmnqONAvtq1doP80/L1jADlvv
 YxwE3W0AAY+pCB6yRhkNNG6uUQbA2vmBD4LevCYWm9oVg/zQk0bs2L1voMbHkAGIgbfVpCjOK
 0SEEPF2fovMPtoB4QzODt4rdFmjzOyZp6TaC7V7UfOu67Rr93ycSWAYpmQgWi8DwETyhm18UY
 9Ywy+Nk6nWDzAgMItqeS1Tm8nnOMs9Lp3IFoQEz93wkIb2658+HDxBUFjyI529xiYci5rwV+f
 8hwc+M9K0XUvtNCZ6C1o8Kcyh7MLs/BViux7V6qq91T13PPxr6I8FWr2U2Xr6xqMGei3n+ZIc
 JSDiwaYWLtE8S9F2C0I5x+h1jDsvDfdYZp7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_150748_113473_CC060304 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

I just built v5.1 and v5.2 from source, without the Arch patches, and
get the same result: 5.1 boots and 5.2 doesn't. I tried adding
ignore_loglevel, but still just get a blinking cursor. So it's
definitely a regression.

I can have a go at bisecting this if it would help? Or is there
something else we could try first?

Alex

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
