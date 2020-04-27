Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3E31BAD14
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 20:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EaQGnBb9igl/s7zt4ayZtroTUrj8wJZ/hCD6W356npk=; b=LZ0Cr3iFY4tlVf
	d55ENDhISUVGHe9DbJ+VuFxhkFqR0ePGMwj99J50LTjU63/IEP+MudzkplQcJ+dlUEkTR0fMHxXdS
	JIHKvv73YE9thT8Ac33EoBVbz+z7i1TcQWp+JZGfRe6nbS5Dh1xTlRL1mZqEJcCZFYwWV4kcLYwbk
	yo17hgCss3ONo72GpvwZ0VTVB21EQyoLyJVD5faTGOnCSabOVpBDi+mOZX3dkPCTFAuX8bfVpR/Uz
	+hVG1RJwbpI+NGGKDcRbtukCjHwwa3ddK19vE4Smp4I0RJF7KSBJAvfMutD2apjiuQA1kwKHTOyyB
	vcvN1FFpkIbHjgyeCFGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8m9-0000Ab-Re; Mon, 27 Apr 2020 18:46:41 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8m6-00009M-S2
 for linux-rockchip@lists.infradead.org; Mon, 27 Apr 2020 18:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588013192;
 bh=n6UuAwEQ8lGzpi0hPjL9sE87HUEm4F8XXWCeKLzXQ/Y=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=o4FLdetPhe0Npu6X4csMoh9AIih5AduEerKbhBSrV0qhXbXxzgVoe2iv0zqxcQ4LT
 9B/tLwIvz8qQlv92FkM9N2afWSe3QjaX8iGdjHfyFqr6tTXPurqQuGsLQQgC2L7kMk
 /VAulm3fCzic3eKUygXzq/1NmWGjqC05TKv+pKNo=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.31] ([89.12.68.2]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MdLcJ-1jjzEa3WBn-00IQSX; Mon, 27
 Apr 2020 20:46:31 +0200
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
To: Anand Moon <linux.amoon@gmail.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <CANAwSgSFPtdvEvacNf6DhzE2fCabgZSBNnZUf0+nQErDWpErOw@mail.gmail.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <c7345431-7585-6052-835e-d9c292978b6e@web.de>
Date: Mon, 27 Apr 2020 20:46:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgSFPtdvEvacNf6DhzE2fCabgZSBNnZUf0+nQErDWpErOw@mail.gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:J3sgsNO32AOu5Qc2TXlIFA83VzwJ76ohcZOv1Zmet6fdTcPtQ/0
 4RsP2orl2tRvBXAVaxnDzmQ3IM2ZOv8fm+IzGziq5N6kl0XWLzEWz4DvFNrGcqESyzLojyJ
 gY2gUh5dRsFEx989CX8HE39Ee9lIZ4tE+jh7j/RX7BW0nclSCt+9TLQyW/loX28hPyHWs9W
 5cuz6h4q6uFbfg6y77IAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c+fGa3ZUgT8=:UT3/AWU+oXGeHnzZ3FIo2j
 K2tPHD2ZbFLNXg1rI2KuYZGjUNJAP6k+OVCT1hI6KFGbnBjZ3CmInZEp5dqSMOpogCyMnynuS
 YBB/aVfu93oZjwVd1CkBLkNWWOEux1C81qAjiseTjJyAYLryEqOGh3NIqpH/K+mE991DIuzaa
 JnnyxWIdfQSQz5Lji3zU71EO4ZekZ31NfeL9MuNFnIaEb3kjz0sRkfEtfldqAwmasLEdaqhp/
 hucMsbdcQ+5A2gXFS1ktt5nXtclTcvl6GxcIGbpFQoiCLNx8pJnnI7edLSGheVIL2rxD1gLVw
 ETniqc541O35tToH1wBZPswLH0Dx5KMQ9L1W6zBOTiLYxye/voRu55t/2VGppiX7/0GUZEeAn
 PkQjXIt4ffP3M7oNIh3RJ5yJjUQ4dFJCb89xLgxZml4MZsqRsvleIZYq9iBYvHVtmh1obr5wl
 1MXyICDBmBVEM5BeQpSNVoL0gkparclReq5JIpYHmeLGaYcXj0uVZ00Hvw6eA5XG3QBIsA6FK
 6+vEkHbwzWHt/xX8G+UvAZiNdCIBip2WrC8r2VsSQBnGtP6plLFZ88l7ttZMhdGy090tTkLYU
 VLi7XsbnI+2bL5MgukePqqg4x5Eet32T0+8w4LCir/zL2lzA3RevfxolbOzPfHc1YdMOslTk9
 7dSNovxiFhuX+Qz5Pfv2Fo9B2q2XVqEB095zI+JRkb/BWWkEUGHOs04HbqbKN2QU2cpnk7LaU
 VZ9BQs9gqO7Ho+STtFkpmSJCILAQ7Bem6UozYD2VSW3u53HsvGxNfu+DPK7I5Qg/c65Tn1FCH
 L6d2WV3WtXFav/zhGFyAA+R4YMkSqYk0hKWP5jhw6so5IR56FCxMhy9ghZlBet4ncrfZDeKkC
 eJNjPlFRaouTHoole5YnxqOhUnD3++UC7wsleUNHGVf6jjGtwmGx0An+/yQSqCsD64u4iLGT8
 ZI/I5fpikUw0KWB4Q5XNzwZ5eahbr6a1/iWfPJLBFdbYKrIWWJLupQcFUydk8TX10jrB6DV1Q
 9wjbOcO1W0fJe6sY6sVjv61I8W7yf+7QsbnXVchYeI/YykUoeu8hoUiQcrgf0yTPOsbpC1CU0
 v8tsC5TndhJOegqzV3/yFxjSKp2pEVWUl1M0TSytH5WlalvQKBG0ebBF2Una3a9eRnq5Ve1sD
 GLNBvzPZITNUhq2MrY70nodfojKldmVsbQEYRe22p4oTK+Tm+XZS5ucwYJYmgrQPyMxDg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_114639_318250_A630634E 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [smoch[at]web.de]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lee Jones <lee.jones@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 27.04.20 20:41, Anand Moon wrote:
> Hi Robin,
>
> On Sun, 12 Jan 2020 at 07:25, Robin Murphy <robin.murphy@arm.com> wrote:
>> Hi all,
>>
>> Here's a second crack at my RK805-inspired cleanup. There was a bit
>> of debate around v1[1], but it seems like we're now all happy that this
>> is a reasonable way to go. For clarity I decided to include Soeren's
>> patch as #1/5, but since I've rewritten most of my patches I've not
>> included the tested-by tags.
>>
>> Robin.
>>
> Can you re-spin this series, it seem these patches are lost.
>
These patches are already merged as
d8f083a302f7..42679765faf2

Soeren

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
